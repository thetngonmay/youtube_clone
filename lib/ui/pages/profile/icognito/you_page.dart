import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';

import '../download_page.dart';

class YouPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return YouPageState();
    
  }
  
}
class YouPageState extends State<YouPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       actions: [
         IconButton(onPressed: () => onCastClick(context), icon: Icon(Icons.cast)),
         IconButton(onPressed: onNotificationClick, icon: Icon(Icons.notifications_none)),
         IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
         IconButton(onPressed: onSettingClick, icon: Icon(Icons.settings_outlined))
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
                 child: Text("Nothing is add to the 'You' Tab while you're incognito",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.grey),),
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

  void onSettingClick() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>SettingPage()));
  }
}