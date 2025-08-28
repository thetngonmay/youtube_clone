import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';
import 'package:youtube_clone/ui/pages/home/music_detail.dart';

class MusicCard extends StatelessWidget{
  final MusicModel data;

  const MusicCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>MusicDetail(data: data)));
      },
      child: Card(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder: (context, url, progress) => Center(
                          child: CircularProgressIndicator(
                            value: progress.progress,
                          ),
                        ),
                        imageUrl: data.videoImage
                      ),
                      Positioned(
                        right: 7,
                        bottom: 7,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.music_note, color: Colors.white,),
                              Text(data.durationTime,style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(data.channelProfileurl),
                        radius: 30,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data.musicTitle,style: TextStyle(fontSize: 16),),
                              Wrap(
                                spacing: 5,
                                children: [
                                  Text(data.channelName),
                                  Container(
                                    color: Colors.grey,
                                    width: 2,
                                    height: 2,
                                  ),
                                  Text("${data.viewCount} views"),
                                  Container(
                                    color: Colors.grey,
                                    width: 2,
                                    height: 2,
                                  ),
                                  Text(data.date)

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: (){
                          onMoreClick(context);
                        },
                        icon: Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
  void onMoreClick(BuildContext contex) {
    showModalBottomSheet(
        context: contex,
        builder: (BuildContext context){
          return Container(
            width: double.infinity,
            height: 250,
            child: Column(
              children: [
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.hide_source_outlined),
                  title: Text("Not interested"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.playlist_add_outlined),
                  title: Text("Play next in queue"),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network("https://img.freepik.com/free-vector/gradient-p-logo-template_23-2149372725.jpg?semt=ais_hybrid&w=740&q=80",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.save),
                  title: Text("Save to Library"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.shortcut_outlined),
                  title: Text("Share"),
                ),
              ],
            ),
          );
        }
    );

  }
}