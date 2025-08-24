import 'package:flutter/material.dart';

class HomeSocialActionsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return HomeSocialActionsPageState();
  }

}
class HomeSocialActionsPageState extends State<HomeSocialActionsPage>{
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
     height: 50,
     child: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Row(
         children: List.generate(1, (index) {
           return Container(
                 padding: EdgeInsets.zero,
                 width: 50,
                 decoration: BoxDecoration(color: Colors.grey[100],
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [BoxShadow(
                       color: Colors.black12,
                       blurRadius: 1,
                       offset: Offset(1, 1),
                     )
                     ]
                 ),
                 child:Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     IconButton(onPressed: onCompassClick, icon: Icon(Icons.compass_calibration)
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       width: 50,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("All",style: TextStyle(fontSize: 18),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       width: 50,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Music",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Sai Htee Saing",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Pheleng phuea chiwit",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Live",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Vocals",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Soft Rock",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Vocabulary",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Soul Music",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Pop Music",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Recently uploaded",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.black12,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("New to you",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                     SizedBox(width: 15),
                     Container(
                       padding: EdgeInsets.zero,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: Colors.blue,
                             blurRadius: 1,
                             offset: Offset(1, 1)
                         ),
                         ],
                       ),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Send feedback",style: TextStyle(fontSize: 15),)
                         ],
                       ),
                     ),
                   ],
                 ),
           );
         },
       ),
     ),
     ),
   );
  }

  void onCompassClick() {
  }
}

