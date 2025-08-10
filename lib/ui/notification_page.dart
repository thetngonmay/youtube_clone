
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/search_page.dart';
import 'package:youtube_clone/ui/setting_page.dart';
import 'package:youtube_clone/ui/widgets/notification_card.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return NotificationPageState();

  }
}

class NotificationPageState extends State<NotificationPage>{

  void onCastClick(){

  }
  void onSearchbar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>SearchPage())
    );
  }
  void onMore(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notifications"),
          actions: [
            IconButton(onPressed: onCastClick, icon: Icon(Icons.cast)),
            IconButton(onPressed: onSearchbar, icon: Icon(Icons.search)),
            PopupMenuButton<String>(
              onSelected: (String result){
                if(result=='setting'){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>SettingPage())
                  );
                }
              },
              itemBuilder: (BuildContext context)=> <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'setting',
                  child: Text('Setting'),
                ),
                const PopupMenuItem<String>(
                  value: 'tv',
                  child: Text('Watch on TV'),
                ),
                const PopupMenuItem<String>(
                  value: 'tc',
                  child: Text('Terms and privacy policy'),
                ),
                const PopupMenuItem<String>(
                  value: 'help',
                  child: Text('Help and feedback'),
                )
              ],
            )

          ],
        ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (BuildContext context,int index){
          return NotificationCard();
          }
      )
    );

  }

}

