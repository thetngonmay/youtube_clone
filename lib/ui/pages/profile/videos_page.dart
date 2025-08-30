import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/profile/profile_top_tab.dart';
import 'package:youtube_clone/ui/pages/search/search_page.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscription_tab_view.dart';

import '../setting/help_page.dart' show HelpPage;
import '../setting/privacy_page.dart' show PrivacyPage;
import '../setting/setting_page.dart' show SettingPage;
import '../setting/watch_on_page.dart' show WatchOnPage;

class VideosPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return VideosPageState();
  }

}
class VideosPageState extends State<VideosPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast)),
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
        children: [
          ProfileTopTab((selectedTab){
            print(selectedTab);
    }),
          Container(
            padding: EdgeInsets.zero,
            child: ClipRRect(
              borderRadius: BorderRadius.zero,
              child: CachedNetworkImage(
                width: 420,
                height: 400,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context,url,progress)=>Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl: "https://static.vecteezy.com/system/resources/previews/015/275/318/non_2x/beautiful-beach-tropical-beach-background-as-summer-landscape-white-sand-and-calm-sea-for-beach-banner-perfect-beach-scene-vacation-and-summer-holiday-concept-boost-up-color-process-photo.jpg",
              ),
            ),
          ),
          SizedBox(height: 30,),
         Container(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Share your video with anyone,or everyone.")
             ],
           ),
         ),
          SizedBox(height: 30,),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Text("Create",style: TextStyle(color: Colors.white,fontSize: 25),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
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

  void onSearchClick() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>SearchPage()));
  }
  void onLinkClick() {
  }

  void onLearnClick() {
  }
}