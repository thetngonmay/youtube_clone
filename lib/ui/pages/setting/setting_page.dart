import 'package:flutter/material.dart';
import 'package:youtube_clone/model/setting_model.dart';
import 'package:youtube_clone/ui/pages/setting/billing_and_payments.dart';
import 'package:youtube_clone/ui/pages/setting/connected_apps_page.dart';
import 'package:youtube_clone/ui/pages/setting/family_center_page.dart';
import 'package:youtube_clone/ui/pages/setting/general_setting_page.dart';
import 'package:youtube_clone/ui/pages/setting/notification_setting_page.dart';
import 'package:youtube_clone/ui/pages/setting/playback_page.dart';
import 'package:youtube_clone/ui/pages/setting/privacy_page.dart';
import 'package:youtube_clone/ui/pages/setting/switch_account_setting_page.dart';

import 'about_page.dart' show AboutPage;
import 'accessbility_page.dart';
import 'data_saving_page.dart';
import 'downloads_page.dart' show DownloadsPage;
import 'help_page.dart' show HelpPage;
import 'video_quality_page.dart';

class SettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return SettingPageState();

  }

}
class SettingPageState extends State<SettingPage>{
  List<SettingGroup> settingDataList = [
    SettingGroup(
        "Account", 
        [
          SettingModel(
              Icons.settings_outlined, 
              "General"
          ),
          SettingModel(
              Icons.switch_account_outlined,
              "Switch account"
          ),
          SettingModel(
              Icons.family_restroom_outlined,
              "Family Centre"
          ),
          SettingModel(
              Icons.notifications_none_outlined,
              "Notifications"
          ),
          SettingModel(
              Icons.card_membership,
              "Purchases and memberships"
          ),
          SettingModel(
              Icons.credit_card,
              "Billing and payments"
          ),
          SettingModel(
              Icons.manage_history_outlined,
              "Manage all history"
          ),
          SettingModel(
              Icons.person_pin_outlined,
              "Your data in YouTube"
          ),
          SettingModel(
              Icons.lock_outline,
              "Privacy"
          ),
          SettingModel(
              Icons.circle_outlined,
              "connected apps"
          ),
          SettingModel(
              Icons.filter_alt_outlined,
              "Try experimental new features"
          )
        ]
    ),
    SettingGroup(
        "Video and audio preferences",
        [
          SettingModel(
              Icons.videocam_outlined,
             "Video quality preferences"
          ),
          SettingModel(
              Icons.play_arrow_outlined,
              "Playback"
          ),
          SettingModel(
              Icons.closed_caption_off_outlined,
              "Captions"
          ),
          SettingModel(
              Icons.add_road_outlined, 
              "Data saving"
          ),
          SettingModel(
              Icons.arrow_downward_outlined, 
              "Downloads"
          ),
          SettingModel(
              Icons.accessibility_new_outlined,
              "Accessibility"
          ),
          SettingModel(
              Icons.screenshot_monitor_outlined,
              "Watch on TV"
          )
        ]
    ),
    SettingGroup(
        "Help and policy",
      [
        SettingModel(
            Icons.help_outline_outlined,
            "Help"
        ),
        SettingModel(
            Icons.file_open,
            "YouTube Terms of Service"
        ),
        SettingModel(
            Icons.feedback_outlined,
            "Send Feedback"
        ),
        SettingModel(
            Icons.info_outline_rounded,
            "About"
        ),
      ]
    )
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Settings"),
     ),
     body: ListView.separated(
         itemCount: settingDataList.length,
         separatorBuilder: (BuildContext context, int index){
           return Divider();
         },
         itemBuilder: (BuildContext context, int index){
           return Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                 child: Text(settingDataList[index].title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               ),
               ...settingDataList[index].contents.map((item){
                 return ListTile(
                   onTap: () {
                     if (item.text == "General") {
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder: (context) => GeneralSettingPage()));
                     }
                     else if (item.text == "Switch account") {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) =>
                               SwitchAccountSettingPage()));
                     }
                     else if(item.text=="Family Centre"){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>FamilyCenterPage()));
                     }
                     else if (item.text == "Notifications") {
                       Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) =>
                               NotificationSettingPage()));
                     }
                     else if (item.text=="Purchases and memberships"){

                     } else if (item.text == "Billing and payments") {
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder: (context) => BillingAndPaymentsPage()));
                     }
                     else if (item.text == "Privacy") {
                       Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) => PrivacyPage()));
                     }
                     else if (item.text == "connected apps") {
                       Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) => ConnectedAppsPage()));
                     }
                     else if (item.text == "Playback") {
                       Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) => PlaybackPage()));
                     }
                     else if (item.text == "Data saving") {
                       Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) => DataSavingPage()));
                     }
                     else if (item.text=="Downloads"){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => DownloadsPage()));
                     }
                     else if(item.text=="Accessibility"){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=> AccessbilityPage()));
                     }
                     else if(item.text=="About"){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=> AboutPage()));
                     }
                     else if(item.text=="Video quality preferences"){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>VideoQualityPage()));
                     }
                     else if(item.text=="Help"){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>HelpPage()));
                     }

                   },
                   title: Text(item.text),
                   leading: Icon(item.icon),
                 );
               })
             ],
           );
         }
     )
   );
  }
}


