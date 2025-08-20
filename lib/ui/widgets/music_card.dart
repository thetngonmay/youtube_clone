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
                      IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert))
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }


  void onMoreClick() {

  }
}