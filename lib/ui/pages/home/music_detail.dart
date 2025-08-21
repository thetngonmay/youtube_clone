import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';
import 'package:youtube_clone/ui/pages/home/widget/channel_subscribe_view.dart';
import 'package:youtube_clone/ui/pages/home/widget/comment_section_view.dart';
import 'package:youtube_clone/ui/pages/home/widget/music_info_view.dart';
import 'package:youtube_clone/ui/pages/home/widget/social_actions.dart';

class MusicDetail extends StatefulWidget {
  final MusicModel data;

  const MusicDetail({super.key, required this.data});

  @override
  State<StatefulWidget> createState() {
    return MusicDetailState();
  }

}

class MusicDetailState extends State<MusicDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MusicInfoView(widget.data,(){
                  Navigator.of(context).pop();
                }),
                ChannelSubscribeView(widget.data),
                SocialActions(),
                CommentSectionView(),
              ]
          ),
        ),
    );
  }
}