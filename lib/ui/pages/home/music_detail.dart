import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';

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
        Stack(
        children: [
        CachedNetworkImage(
        imageUrl: widget.data.videoImage,
          width: double.infinity,
          height: 200,

        ),
        Positioned(
          bottom: 8,
          left: 15,
          right: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.data.durationTime,
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
              IconButton(onPressed: onHideClick,
                icon: Icon(Icons.keyboard_arrow_down_outlined),),
              Row(
                children: [
                  IconButton(onPressed: onCastClick,
                    icon: Icon(Icons.cast_connected_outlined),),
                  IconButton(onPressed: onSubstitleClick,
                    icon: Icon(Icons.subtitles_off),),
                  IconButton(
                      onPressed: onSettingClick, icon: Icon(Icons.settings))
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
          widget.data.musicTitle,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Row(
          children: [
            Text("${widget.data.viewCount} views"),
            SizedBox(
              width: 10,
            ),
            Text(widget.data.date)

          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(widget.data.channelProfileurl),
                ),
                SizedBox(width: 10,),
                Text(widget.data.channelName, style: TextStyle(
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
      ),
      Container(
        padding: EdgeInsets.only(left: 15,right: 15,top: 15),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1,1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onLikeClick,
                    icon: Icon(Icons.thumb_up_alt_outlined),),
                  Text("2.5k"),
                  IconButton(onPressed: onDislikeClick,
                    icon: Icon(Icons.thumb_down_alt_outlined),),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
               borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                color: Colors.black12,
                  blurRadius: 1,
                  offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onShareClick, icon: Icon(Icons.share_outlined),),
                  Text("Share")
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onRemixClick, icon: Icon(Icons.playlist_add_outlined),),
                  Text("Remix")
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onDownloadClick, icon: Icon(Icons.arrow_downward_outlined),),
                  Text("Download")
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onClipClick, icon: Icon(Icons.cut_outlined),),
                  Text("Clip")
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onSaveClick, icon: Icon(Icons.save_alt_outlined),),
                  Text("Save")
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onReportClick, icon: Icon(Icons.flag_outlined),),
                  Text("Report")
                ],
              ),
            ),
          ],
        ),
      ),
    ],
        ),
    ),
    );
  }

  void onZoomClick() {

  }


  void onHideClick() {
    Navigator.of(context).pop();
  }

  void onCastClick() {
  }

  void onSubstitleClick() {
  }

  void onSettingClick() {
  }

  void onSubscribeClick() {
  }

  void onLikeClick() {
  }

  void onDislikeClick() {
  }

  void onShareClick() {
  }

  void onRemixClick() {
  }

  void onDownloadClick() {
  }

  void onClipClick() {
  }

  void onSaveClick() {
  }

  void onReportClick() {
  }
}