import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';

class MusicInfoView extends StatelessWidget{
  final MusicModel data;
  final  Function onBack;
  MusicInfoView(this.data,this.onBack);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CachedNetworkImage(
              imageUrl: data.videoImage,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 8,
              left: 15,
              right: 5,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.durationTime,
                    style: TextStyle(color: Colors.black),),
                  IconButton(onPressed: onZoomClick,
                      icon: Icon(Icons.zoom_out_map_outlined))
                ],
              ),
            ),
            Positioned(
              top: 8,
              left: 15,
              right: 15,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed:(){
                    onBack();
                  },
                    icon: Icon(Icons.keyboard_arrow_down_outlined),),
                  Row(
                    children: [
                      IconButton(onPressed: onCastClick,
                        icon: Icon(Icons.cast_connected_outlined),),
                      IconButton(onPressed: onSubstitleClick,
                        icon: Icon(Icons.subtitles_off),),
                      IconButton(
                        onPressed: onSettingClick, icon: Icon(Icons
                          .settings),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Text(
            data.musicTitle,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
            children: [
              Text("${data.viewCount} views"),
              SizedBox(
                width: 10,
              ),
              Text(data.date)

            ],
          ),
        ),
      ],
    );
  }
  void onZoomClick() {

  }

  void onCastClick() {
  }

  void onSubstitleClick() {
  }

  void onSettingClick() {
  }

  void onSubscribeClick() {
  }

}