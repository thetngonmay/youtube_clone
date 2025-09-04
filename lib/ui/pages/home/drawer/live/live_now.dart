import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/live_list_model.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart' hide onCastClick;
import 'package:youtube_clone/ui/pages/profile/movies_page.dart';
import 'package:youtube_clone/ui/pages/setting/help_page.dart';
import 'package:youtube_clone/ui/pages/setting/privacy_page.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';
import 'package:youtube_clone/ui/pages/setting/watch_on_page.dart';

class LiveNow extends StatelessWidget{
  final List<LiveListModel> data;

  const LiveNow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("live Now"),
        actions: [
          IconButton(icon: Icon(Icons.cast), onPressed:()=> onCastClick(context),),
          IconButton(onPressed: ()=>onSearchClick, icon: Icon(Icons.search)),
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
              ]
          ),

        ],

      ),
      body: ListView.builder(
        padding: EdgeInsets.only(left: 15,right: 15),
        itemCount: data.length,
          itemBuilder: (context, index) {
            final live = data[index];
            return ListTile(
              leading: Image.network(
                live.imgUrl,
                width: 100,
                height: 200,
                fit: BoxFit.cover,
              ),

              title: Text(live.title),
              subtitle: Text(live.description),
              trailing: Text(live.watching),

            );

          }
      ),
    );
  }
}