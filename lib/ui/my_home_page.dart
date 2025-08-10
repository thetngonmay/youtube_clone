
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/setting_page.dart';
import 'package:youtube_clone/ui/widgets/music_card.dart';

import 'notification_page.dart';

class Myhomepage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MyhomepageState();
  }

}

class MyhomepageState extends State<Myhomepage>{

  void onNotiClick(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>NotificationPage())
    );
  }

  void onSettingClick(){
    Navigator. push(
      context,
      MaterialPageRoute(builder: (context)=>SettingPage())
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube"),
        actions: [
          IconButton(onPressed: onNotiClick, icon: Icon(Icons.notifications)),
          IconButton(onPressed: onSettingClick, icon: Icon(Icons.settings))
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (BuildContext context, int index){
          return MusicCard();
          }
      ),
    );
  }


  void onMoreClick() {

  }
}