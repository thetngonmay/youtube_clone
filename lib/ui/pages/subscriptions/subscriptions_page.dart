import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscription_tap_page.dart';

class SubscribtionsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SubscribtionsPageState();
  }

}
class SubscribtionsPageState extends State<SubscribtionsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YouTube"),
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast),),
          IconButton(onPressed: onNotificatiionClick, icon: Icon(Icons.notifications_none),),
          IconButton(onPressed: onSettingClick, icon: Icon(Icons.settings_outlined),),
        ],
      ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubscriptionTapPage((selectedTab){

              })
            ],
        ),
    );
  }


  void onCastClick() {
  }
  void onNotificatiionClick(){

  }

  void onSettingClick() {
  }
}