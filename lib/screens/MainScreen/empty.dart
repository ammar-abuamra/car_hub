import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
var jsonList ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }


  void GetData() async {
    try {
      var response = await Dio().get('http://192.168.1.169:3333/Vehicle');
      if (response.statusCode == 200) {
        print(response);

        setState(() {
          jsonList = response.data as List;
        });

      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(

          itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(jsonList[index]['name']),
          subtitle: Text(jsonList[index]['model']),
        );
      }
     , itemCount:jsonList == null ? 0 :  jsonList.length,
      ),
    );
  }
}
