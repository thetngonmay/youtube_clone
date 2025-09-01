import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart';

import '../../setting/help_page.dart' show HelpPage;
import '../../setting/privacy_page.dart' show PrivacyPage;
import '../../setting/setting_page.dart' show SettingPage;
import '../../setting/watch_on_page.dart' show WatchOnPage;

class LivePage extends StatefulWidget{
  final List<Map<String,String >>liveList=[
    {
      'imageUrl': 'https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb',
    }
  ];
  @override
  State<StatefulWidget> createState() {
    return LivePageState();
  }

}
class LivePageState extends State<LivePage>{
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage:NetworkImage("https://cdn.jim-nielsen.com/watchos/512/youtube-music-2021-06-14.png?rf=1024",),
                    ),
                    SizedBox(width: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Live",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 8),
                    child: Row(

                    ),
                  )
                ],
              )
            ],
          ),
        ),
    );
  }

}

// Widget _buildLiveItem(Map<String,String>live){
//
//   return ListView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       padding: EdgeInsets.only(left: 15, right: 15),
//       itemCount: widget.liveList.length,
//       itemBuilder: (context, index) {
//         return _buildLiveItem(widget.liveList[index]);
//       }
//   );
// }