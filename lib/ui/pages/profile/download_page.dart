import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../setting/help_page.dart' show HelpPage;
import '../setting/privacy_page.dart' show PrivacyPage;
import '../setting/setting_page.dart' show SettingPage;
import '../setting/watch_on_page.dart' show WatchOnPage;

class DownloadPage extends StatefulWidget {
  final List<Map<String, String>> musicList = [
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmo5HufiHe3IoDopISuymHVfXQhnMUjnXpcg&s',
      'title': 'Some',
      'artist': 'BolBBalgan4',
      'views': '256k views',
      'time': ' 1 month ago',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/fe/c6/e3/fec6e33ee91fd0ed45a1e1ab0164e691.jpg',
      'title': '뛰어(JUMP)',
      'artist': 'BLACKPINK ',
      'views': '259k views',
      'time': ' 2 month ago',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1EhruJzbRoxdPR5xjPzyXeeC32NGKcYM7Sg&s',
      'title': '바이, 썸머 (Bye summer)',
      'artist': 'IU',
      'views': '795k views',
      'time': ' 5 month ago',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmo5HufiHe3IoDopISuymHVfXQhnMUjnXpcg&s',
      'title': 'Some',
      'artist': 'BolBBalgan4',
      'views': '256k views',
      'time': ' 1 month ago',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/fe/c6/e3/fec6e33ee91fd0ed45a1e1ab0164e691.jpg',
      'title': '뛰어(JUMP)',
      'artist': 'BLACKPINK ',
      'views': '259k views',
      'time': ' 2 month ago',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1EhruJzbRoxdPR5xjPzyXeeC32NGKcYM7Sg&s',
      'title': '바이, 썸머 (Bye summer)',
      'artist': 'IU',
      'views': '795k views',
      'time': ' 5 month ago',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmo5HufiHe3IoDopISuymHVfXQhnMUjnXpcg&s',
      'title': 'Some',
      'artist': 'BolBBalgan4',
      'views': '256k views',
      'time': ' 1 month ago',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/fe/c6/e3/fec6e33ee91fd0ed45a1e1ab0164e691.jpg',
      'title': '뛰어(JUMP)',
      'artist': 'BLACKPINK ',
      'views': '259k views',
      'time': ' 2 month ago',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1EhruJzbRoxdPR5xjPzyXeeC32NGKcYM7Sg&s',
      'title': '바이, 썸머 (Bye summer)',
      'artist': 'IU',
      'views': '795k views',
      'time': ' 5 month ago',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1EhruJzbRoxdPR5xjPzyXeeC32NGKcYM7Sg&s',
      'title': '바이, 썸머 (Bye summer)',
      'artist': 'IU',
      'views': '795k views',
      'time': ' 5 month ago',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1EhruJzbRoxdPR5xjPzyXeeC32NGKcYM7Sg&s',
      'title': '바이, 썸머 (Bye summer)',
      'artist': 'IU',
      'views': '795k views',
      'time': ' 5 month ago',
    },
  ];
  @override
  State<StatefulWidget> createState() {
    return DownloadPageState();
  }
}

class DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Row(
          children: [
            BackButton(),
            Padding(
                padding: EdgeInsets.all(8),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoiMtJG_PC4lsb3-GZAiTZkUXAm3VlkJC1Ag&s",
              width: 35,
              height: 30,
              ),
            ),
        ]
        ),
        title: Text("Downloads"),
        actions: [
          IconButton(onPressed:()=> onCastClick(context), icon: Icon(Icons.cast)),
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
          ),
        ],
      ),

      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          "Your downloads",
          style: TextStyle(fontSize: 17),
        ),
      ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 15, right: 15),
              itemCount: widget.musicList.length,
              itemBuilder: (context, index) {
                return _buildMusicItem(widget.musicList[index]);
              },
            ),
      ],
        ),
          ),
    );
    }
  Widget _buildMusicItem(Map<String, String> music) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(music['imageUrl']!),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("4:12"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  music['title']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),

                ),
                SizedBox(height: 4),
                Text(
                  music['artist']!,
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
                SizedBox(height: 4),
                Text(
                  '${music['views']} - ${music['time']}',
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                ),
              ],
            ),
          ),
          IconButton(onPressed: ()=>
            onMoreClick(context), icon: Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
    );
  }
  }
  void onCastClick(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          width: double.infinity,
          height: 200,
          child: Row(
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

      });
  }
  void onSearchClick() {}
  void onMoreClick(BuildContext context) {
  showModalBottomSheet(context: context,
      builder: (BuildContext context){
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          ListTile(
            leading: IconButton(onPressed:onDeleteClick, icon: Icon(Icons.delete_outline)),
            title: Text("Delete from downloads"),
          )
        ],
      ),
    );
      });
  }

void onDeleteClick() {

}
void onLinkClick() {
}

void onLearnClick() {
}
