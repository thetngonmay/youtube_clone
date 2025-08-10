
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/search_page.dart';
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
            IconButton(onPressed: onMore, icon: Icon(Icons.more_vert)),

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

