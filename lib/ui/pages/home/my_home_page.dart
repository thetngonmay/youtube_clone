import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music_page.dart';
import 'package:youtube_clone/ui/pages/home/widget/home_top_tab.dart';
import 'package:youtube_clone/ui/pages/profile/profile_page.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';
import 'package:youtube_clone/ui/widgets/music_card.dart';

import '../notification/notification_page.dart';

class Myhomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyhomepageState();
  }
}

class MyhomepageState extends State<Myhomepage> {
  List<MusicModel> musicDataList = [
    MusicModel(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "Billie Eilish - BIRDS OF A FEATHER (Official Music Video) ",
      "Billie Eilish",
      "https://assets.vogue.com/photos/609bb445758287e5e091eeed/master/w_2560%2Cc_limit/Billie-Eilish-Happier-Than-Ever.jpeg",
      "4:12",
      "234k",
      "1 month",
    ),
    MusicModel(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Anti Hero",
      "Taylor Swift",
      "https://m.media-amazon.com/images/M/MV5BYWYwYzYzMjUtNWE0MS00NmJlLTljNGMtNzliYjg5NzQ1OWY5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
      "3:55",
      "345k",
      "2 month",
    ),
    MusicModel(
      "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
      "Justin Bieber - Ghost",
      "Comments. 117K. July 2025 anyone?? 5:29 · Go to channel ",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Justin_Bieber_2010_2.jpg/250px-Justin_Bieber_2010_2.jpg",
      "2:56",
      "231k",
      "5 month",
    ),
  ];

  void onNotiClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationPage()),
    );
  }

  void onSettingClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube"),
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast),),
          IconButton(onPressed: onNotiClick, icon: Icon(Icons.notifications_none)),
          IconButton(onPressed: onSettingClick, icon: Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding:EdgeInsets.zero,
          children: [
            Container(
              height:70,
              padding:EdgeInsets.all(10),
              child:Row(
                children:[
                  Image.network("https://icons.iconarchive.com/icons/papirus-team/papirus-apps/512/youtube-icon.png",
                  width:40,
                  height:40,
                  ),
                  SizedBox(width:10),
                  Text("YouTube",style:TextStyle(fontSize:20, fontWeight:FontWeight.bold,))
                ]
              )
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Music"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>MusicPage((selectedTab){})),);
              },
            ),
            ListTile(
              leading: Icon(Icons.connect_without_contact_outlined),
              title: Text("Live"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SettingPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.gamepad_outlined),
              title: Text("Gaming"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SettingPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper_outlined),
              title: Text("News"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SettingPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.sports_bar_outlined),
              title: Text("Sports"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SettingPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.lightbulb_outline),
              title: Text("Learning"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SettingPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.face_retouching_natural),
              title: Text("Fashion & beauty"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SettingPage()));
              },
            ),
            Divider(
              thickness: 1,
            ),
            Container(
              height:70,
              padding:EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png",
                  width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 10,),
                  Text("YouTube Premium")
                ],
              ),
            ),
        Container(
          height:70,
          padding:EdgeInsets.all(10),
          child: Row(
            children: [
              Image.network("https://static.vecteezy.com/system/resources/thumbnails/042/127/122/small_2x/red-circle-bordered-youtube-logo-with-long-shadow-on-transparent-background-free-png.png",
                width: 30,
                height: 30,
              ),
              SizedBox(width: 10,),
              Text("YouTube Music")
            ],
          ),
        ),
            Container(
              height:70,
              padding:EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.network("https://t4.ftcdn.net/jpg/05/43/40/85/360_F_543408558_cOK6l6q6V1XrKRP0VtgIIwKD1JeWw3aT.jpg",
                    width: 30,
                    height: 50,
                  ),
                  SizedBox(width: 10,),
                  Text("YouTube Kids")
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeTopTab((selectedTab){
            print(selectedTab);
          }),
          Expanded(
            child: ListView.builder(
              itemCount: musicDataList.length,
              itemBuilder: (BuildContext context, int index) {
                return MusicCard(data: musicDataList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  void onMoreClick() {}

  void onCastClick() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text("Select a device"),
                ),
                ListTile(
                  leading: IconButton(onPressed: onLinkClick, icon: Icon(Icons.phonelink)),
                  title: Text("Link with TV code"),
                ),
                ListTile(
                  leading: IconButton(onPressed: onLearnClick, icon: Icon(Icons.info_outline)),
                  title: Text("Learn more"),
                )
              ],
            ),
          );
        }
        );
  }

  void onLearnClick() {
  }

  void onLinkClick() {
  }
}
