
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/notification_model.dart';
import 'package:youtube_clone/ui/pages/search/search_page.dart';
import 'package:youtube_clone/ui/pages/setting/help_page.dart';
import 'package:youtube_clone/ui/pages/setting/privacy_page.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';
import 'package:youtube_clone/ui/pages/setting/watch_on_page.dart';
import 'package:youtube_clone/ui/widgets/notification_card.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return NotificationPageState();

  }
}

class NotificationPageState extends State<NotificationPage>{

  List<NotificationModel> notiDataList =  [
    NotificationModel(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Adele_2016.jpg/1200px-Adele_2016.jpg",
        "Adelle 12",
        "Set Fire to the Rain",
        "12 Dec 1993",
        "https://i.ytimg.com/vi/WjqYTpE6Qdg/maxresdefault.jpg",
        true
    ),

    NotificationModel(
        "https://imagenes.elpais.com/resizer/v2/AWNTN6VH5NFBPJYRX7DS6QAAMM.jpg?auth=1426161ce83c0dc66a4185ca80b7f19eeff59f2e1ea63dd2a803a2e8a4417824&width=980&height=980&smart=true",
        "Taylor Swift",
        "Shake it off",
        "15 Dec 1993",
        "https://i.ytimg.com/vi/ic8j13piAhQ/maxresdefault.jpg",
        false
    ),
    NotificationModel(
        "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
        "Billie",
        "Lovely",
        "12 jan 1999",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6sDdZ6oItg8kPZsiSHS7NEuVTRCqrRkm6RA&s",
        true)
  ];

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
        body: ListView.builder(
            itemCount: notiDataList.length,
            itemBuilder: (BuildContext context,int index){
              return NotificationCard(data: notiDataList[index]);
            }
        )
    );

  }

}

