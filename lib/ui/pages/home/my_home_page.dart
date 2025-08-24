import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';
import 'package:youtube_clone/ui/pages/home/widget/bottom_bar_page.dart';
import 'package:youtube_clone/ui/pages/home/widget/home_social_actions_page.dart';
import 'package:youtube_clone/ui/pages/home/widget/home_top_tab.dart';
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
          IconButton(onPressed: onNotiClick, icon: Icon(Icons.notifications)),
          IconButton(onPressed: onSettingClick, icon: Icon(Icons.settings)),
        ],
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
}
