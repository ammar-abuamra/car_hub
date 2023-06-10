import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const/colors.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
       itemBuilder: (context, index) => Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Color(0xff272f35)),
             height: 380,
             width: double.infinity,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: EdgeInsets.all(15.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Covert 711 SX ',
                         style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: PrimaryColor),
                       ),
                       Icon(
                         Icons.favorite_border_outlined,
                         color: Colors.white,
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                   child: Align(
                       alignment: Alignment.topLeft,
                       child: Text(
                         'Coupe',
                         style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.normal,
                             color: Colors.white),
                       )),
                 ),
                 Container(
                   height: 250,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     //color: Colors.white,
                       image: DecorationImage(
                           image: AssetImage('assets/image/corvet.png'))),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Expanded(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Expanded(
                               flex: 1,
                               child: ListTile(
                                 contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                 //horizontalTitleGap: .5,
                                 minLeadingWidth: .5,
                                 leading: Icon(Icons.person,color: PrimaryColor),
                                 title: Text('2',style: TextStyle(color: Colors.white),),
                               )),
                           Expanded(
                               flex: 4,
                               child: ListTile(
                                 minLeadingWidth: 1,
                                 leading: Icon(Icons.filter_list,color: PrimaryColor),
                                 title: Text('Manual',style: TextStyle(color: Colors.white)),
                               ))
                         ],
                       ),
                     ),

                     Text('\$  ',style: TextStyle(color: PrimaryColor,fontSize: 22),),
                     Text('400 /',style: TextStyle(color: Colors.white,fontSize: 20),),
                     Text('day',style: TextStyle(color: Colors.grey),),
                     SizedBox(width: 20,)
                   ],
                 )
               ],
             ),
           )
         ],
       ),
        itemCount: 5,
        padding: EdgeInsets.all(10),

      ),
    );
  }
}


















Widget ProductEdit (BuildContext context){
  return  Scaffold(

    backgroundColor: Colors.white.withOpacity(.1),
    body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height * .8,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            cListTile(Icons.edit,  "Edit Prodct Title",),
            cListTile(Icons.dashboard,"Edit Prodct Category"),
            cListTile(Icons.dashboard_outlined, "Edit Prodcut Sub Category"),
            cListTile(Icons.monetization_on_outlined,"Edit Prodct Price"),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: MediaQuery.of(context).size.height*.05,
                    width:MediaQuery.of(context).size.width *.3,
                    decoration: BoxDecoration(
                        color: SecondryColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Center(child: Text('Cancel',style: TextStyle(color: PrimaryColor,fontWeight: FontWeight.bold,fontSize: 15),)),

                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: MediaQuery.of(context).size.height*.05,
                    width:MediaQuery.of(context).size.width *.3,
                    decoration: BoxDecoration(
                        color: SecondryColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Center(child: Text('Save',style: TextStyle(color: PrimaryColor,fontWeight: FontWeight.bold,fontSize: 15),)),

                  ),
                ),
              ],
            )


          ],
        ),
      ),
    ),
  );
}




ListTile cListTile(IconData icon , String fname) {
  return ListTile(
    leading:Icon(icon,color: Color(0xffedb54f),) ,
    title: Text(fname),

  );
}