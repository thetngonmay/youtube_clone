import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';

class ChannelSubscribeView extends StatelessWidget{
  final MusicModel data;
  ChannelSubscribeView(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                    data.channelProfileurl),
              ),
              SizedBox(width: 10,),
              Text(data.channelName, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),)
            ],
          ),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15)
              ),
              onPressed: onSubscribeClick,
              child: Text("Subscribe")
          )
        ],
      ),
    );
  }


  void onSubscribeClick() {
  }
}