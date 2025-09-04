import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/gaming_model.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart';
import 'package:youtube_clone/ui/pages/setting/help_page.dart';
import 'package:youtube_clone/ui/pages/setting/privacy_page.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';
import 'package:youtube_clone/ui/pages/setting/watch_on_page.dart';

class GamePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GamePageState();
  }

}
List<GamingModel> gameDataList=[
  GamingModel(
      'https://resource-cdn.obsbothk.com/product_system_back/product_img/gamestreamer.jpg',
      'https://img.freepik.com/free-photo/young-hispanic-man-streamer-playing-video-game-using-joystick-gaming-room_839833-8031.jpg',
      'Pupg Game.',
      'PUBG MOBILE game play winner winner chicken dinner',
      '254M',
      '10 days'
  )
];
class GamePageState extends State<GamePage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      actions: [
        IconButton(icon: Icon(Icons.cast), onPressed:()=> onCastClick(context),),
        IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
        PopupMenuButton<String>(
          onSelected: (String result){
            if(result=='setting'){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>SettingPage())
              );
            }
            else if(result=='tv'){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>WatchOnPage()));
            }
            else if(result=='tc'){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>PrivacyPage()));
            }
            else if(result=='help'){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>HelpPage()));
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
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://cdn-1.webcatalog.io/catalog/youtube-gaming/youtube-gaming-social-preview.png?v=1742179158460"),
              ),
              SizedBox(width: 10,),
              Text("Gaming",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
            ],
          ),
        )
      ],
    ),
  );
  }

}