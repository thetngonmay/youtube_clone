
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/setting_page.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Thet Ngon", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("12 December 2000", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors. blue),),
            Text("Yangon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400), ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("091232342"),
                SizedBox(width: 10,),
                Text("092525252"),
              ],
            )
          ],
        ),
      ),
    );
  }

}