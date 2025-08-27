import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicListView extends StatefulWidget{
  final List<Map<String, String>> musicList=[
    {
      'imageUrl':'https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb',
      'title':'Billie Eilish-Birds of a Feather',
      'artist':'Billie Eilish',
      'views':'234k views',
      'time':' 1 month ago',
    },
    {
      'imageUrl':'https://m.media-amazon.com/images/M/MV5BYWYwYzYzMjUtNWE0MS00NmJlLTljNGMtNzliYjg5NzQ1OWY5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
      'title':'Anti Hero',
      'artist':'Taylor Swift',
      'views':'259k views',
      'time':' 2 month ago',
    },
    {
      'imageUrl':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa8y2lpu2cIA3u5bQmHTlXvg2occRyApI_7A&s',
      'title':'Lovely',
      'artist':'Billie Eilish',
      'views':'145k views',
      'time':' 6 month ago',
    },
  ];
  @override
  State<StatefulWidget> createState() {
   return MusicPageState();
  }

}
class MusicPageState extends State<MusicListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 15,right: 15),
      itemCount: widget.musicList.length,
      itemBuilder: (context, index) {
        return _buildMusicItem(widget.musicList[index]);
      },
    );
  }

  Widget _buildMusicItem(Map<String, String> music) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(music['imageUrl']!),
                  fit: BoxFit.cover,
              )
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Positioned(
                    right: 5,
                    bottom: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.music_note, color: Colors.white, size: 20),
                        Text("4:12")
                      ],
                    ),
                  ),
                )
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
          IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
    );
  }

  void onMoreClick() {
  }
}