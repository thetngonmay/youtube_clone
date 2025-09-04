import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/home/drawer/live/live_list_view.dart';
import 'package:youtube_clone/ui/pages/home/drawer/live/live_slider.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart';

import '../../../../../model/live_list_model.dart' show LiveListModel;
import '../../../setting/help_page.dart' show HelpPage;
import '../../../setting/privacy_page.dart' show PrivacyPage;
import '../../../setting/setting_page.dart' show SettingPage;
import '../../../setting/watch_on_page.dart' show WatchOnPage;

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
List <LiveListModel> yiboDataList = [
  LiveListModel(
      'https://i.pinimg.com/736x/50/00/64/500064c3e16d2953f6c64b265a2e5b8d.jpg',
      '我在 I AM NOT HERE',
      ' I AM NOT HERE, but I will always be here.',
      '31M '
  ),
  LiveListModel(
      'https://images.genius.com/54383ca594c70bd823b73dbc8ae679ed.872x872x1.jpg',
      '我在 I AM NOT HERE',
      ' I AM NOT HERE, but I will always be here.',
      '31M '
  ),
  LiveListModel(
      'https://i1.sndcdn.com/artworks-0C0EYTlczf1d8XnJ-ZaChzw-t500x500.jpg',
      '王一博单曲合集',
      ' Songs of Wang Yibo (Single/EP) 王一博单曲合集.',
      '50.9K '
  ),
  LiveListModel(
      'https://kingchoice.me/media/CACHE/images/96757f27b12c80d5e20df95fa4f5d591_mR7qzIg/8da0c6e9487c550853ef70a05f19881e.jpg',
      'SINGLES',
      ' The Rules of My World (2020) US World top 14 (peak chart position) 3.',
      '31M '
  ),
  LiveListModel(
      'https://viberate-upload.ams3.cdn.digitaloceanspaces.com/prod/entity/artist/xiao-zhan-xiao-zhan-aF8FG',
      '肖战Xiao Zhan',
      ' 漂流Life of Us',
      '36M '
  ),
];
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
        body: Column(
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
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LiveSlider(),
                        LiveListView(listName: "Live now", data: yiboDataList,),
                      ],
                    ),
                  )
              )
            ],
        ),

    );
  }
}
