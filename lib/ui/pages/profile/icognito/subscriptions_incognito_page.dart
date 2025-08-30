import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../download_page.dart';

class SubscriptionsIncognitoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SubscriptionsIncognitoState();
  }

}
class SubscriptionsIncognitoState extends State<SubscriptionsIncognitoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/1024px-YouTube_full-color_icon_%282017%29.svg.png",
                width: 30,
                height: 30,
              ),
            )
          ],
        ),
        title: Text(
          "YouTube",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => onCastClick(context),
            icon: Icon(Icons.cast),
          ),
          IconButton(
            onPressed: onNotificationClick,
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30,top: 50),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxXPwc9sJA21oQCGeN9gjTfhoXvauWlBuew&s"),
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: Text("Your subscriptions are hidden while you're incognito",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.grey),),
                ),
                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: Text("Turn off Incognito",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.blue),),
                ),
              ],
            )
          ],
        ),

      ),
    );
  }

  void onNotificationClick() {

  }
}