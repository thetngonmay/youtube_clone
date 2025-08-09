
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/search_page.dart';

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
    );

  }

}

