import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return SettingPageState();

  }

}
class SettingPageState extends State<SettingPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Settings"),
     ),
     body: ListView(
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
           child: Text("Account", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         ),
         ListTile(
           title: Text("General"),
           leading: Icon(Icons.settings_outlined),
         ),
         ListTile(
           title: Text("Switch account"),
           leading: Icon(Icons.switch_account_outlined),
         ),
         ListTile(
           title: Text("Family Centre"),
           leading: Icon(Icons.family_restroom_outlined),
         ),
         ListTile(
           title: Text("Notifications"),
           leading: Icon(Icons.notifications_none_outlined),
         ),
        ListTile(
        title: Text("Purchases and memberships"),
        leading: Icon(Icons.card_membership),
        ),
         ListTile(
           title: Text("Billing and payments"),
           leading: Icon(Icons.credit_card),
         ),
         ListTile(
           title: Text("Manage all history"),
           leading: Icon(Icons.manage_history_outlined),
         ),
         ListTile(
           title: Text("Your data in YouTube"),
           leading: Icon(Icons.person_pin_outlined),
         ),
         ListTile(
           title: Text("Privacy"),
           leading: Icon(Icons.lock_outline),
         ),
         ListTile(
           title: Text("connected apps"),
           leading: Icon(Icons.circle_outlined),
         ),
         ListTile(
           title: Text("Try experimental new features"),
           leading: Icon(Icons.filter_alt_outlined),
         ),
         Divider(

         ),
         Padding(
             padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
           child: Text("Video and audio preference",style: TextStyle(fontSize: 20,fontWeight:  FontWeight.bold ),),
         ),
         ListTile(
           title: Text("Video quallity preferences"),
           leading: Icon(Icons.videocam_outlined),
         ),
         ListTile(
           title: Text("Playback"),
           leading: Icon(Icons.play_arrow_outlined),
         ),
         ListTile(
           title: Text("Captions"),
           leading: Icon(Icons.closed_caption_off_outlined),
         ),
         ListTile(
           title: Text("Data saving"),
           leading: Icon(Icons.add_road_outlined),
         ),
         ListTile(
           title: Text("Downloads"),
           leading: Icon(Icons.arrow_downward_outlined),
         ),
         ListTile(
           title: Text("Accessibility"),
           leading: Icon(Icons.accessibility_new_outlined),
         ),
         ListTile(
           title: Text("Watch on TV"),
           leading: Icon(Icons.screenshot_monitor_outlined),
         ),
         Divider(

         ),
         Padding(
             padding:EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Text("Help and policy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         ),
        ListTile(
          title: Text("Help"),
          leading: Icon(Icons.help_outline_outlined),
        ),
         ListTile(
           title: Text("YouTube Terms of Service"),
           leading: Icon(Icons.file_open),
         ),
         ListTile(
           title: Text("Send feedback"),
           leading: Icon(Icons.feedback_outlined),
         ),
         ListTile(
           title: Text("About"),
           leading: Icon(Icons.info_outline_rounded),
         )

       ],
     ),
   );
   
  }
  
}
