import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoQualityPreferencesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return VideoQualityPreferencesPageState();
  }

}
class VideoQualityPreferencesPageState extends State<VideoQualityPreferencesPage>{
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Video quality preferences"),
       bottom: PreferredSize(preferredSize: Size.fromHeight(20),
         child: Padding(
           padding: EdgeInsets.only(bottom: 3,left: 18),
           child: Align(alignment: Alignment.centerLeft,
               child: Text("Select your default streaming quality for all videos.You can change streaming quality in player options for single video",),
           ),
         ),
         )
       ),
       body: SingleChildScrollView(
         child: Column(
             children: <Widget>[
               Divider(
                 height: 10,
                 color: Colors.blue,
                 thickness: 2,
               ),
         ListTile(
         title: Text("VIDEO QUALITY ON MOBILE NETWORKS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
       ),
               ListTile(
                 title: Text("Auto()recommended"),
                 subtitle: Text("Adjusts to give you the best experience for your conditions"),
                 trailing: Switch(
                     value: isSwitched,
                     onChanged: (newValue) {
                       setState(() {
                         isSwitched = newValue;
                       });
                     }
                 ),
               ),
               ListTile(
                 title: Text("Higher picture quality"),
                 subtitle: Text("Uses more data"),
                 trailing: Switch(
                     value: isSwitched,
                     onChanged: (newValue) {
                       setState(() {
                         isSwitched = newValue;
                       });
                     }
                 ),
               ),
               ListTile(
                 title: Text("Data saver"),
                 subtitle: Text("Lower picture quality"),
                 trailing: Switch(
                     value: isSwitched,
                     onChanged: (newValue) {
                       setState(() {
                         isSwitched = newValue;
                       });
                     }
                 ),
               ),
               Divider(
                 color: Colors.blue,
                 thickness: 2,
                 height: 10,
               ),
               ListTile(
                 title: Text("VIDEO QUALITY ON WI-FI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
               ),
               ListTile(
                 title: Text("Auto()recommended"),
                 subtitle: Text("Adjusts to give you the best experience for your conditions"),
                 trailing: Switch(
                     value: isSwitched,
                     onChanged: (newValue) {
                       setState(() {
                         isSwitched = newValue;
                       });
                     }
                 ),
               ),
               ListTile(
                 title: Text("Higher picture quality"),
                 subtitle: Text("Uses more data"),
                 trailing: Switch(
                     value: isSwitched,
                     onChanged: (newValue) {
                       setState(() {
                         isSwitched = newValue;
                       });
                     }
                 ),
               ),
               ListTile(
                 title: Text("Data saver"),
                 subtitle: Text("Lower picture quality"),
                 trailing: Switch(
                     value: isSwitched,
                     onChanged: (newValue) {
                       setState(() {
                         isSwitched = newValue;
                       });
                     }
                 ),
               ),

     ]
         )
    ),
    );

  }

}