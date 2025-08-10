import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/notification_model.dart';

class NotificationCard extends StatelessWidget{
  final NotificationModel data;

  const NotificationCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: data.isSeen? Colors.white: Colors.blueAccent,
      child: Container(
        padding: EdgeInsets.only(left: 15,top: 15,bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(data.channelProfileUrl),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.notificationTitle, style: TextStyle(fontSize: 20),),
                    Text(data.notificationDesc),
                    Text(data.createdDate),
                 ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: CachedNetworkImage(
                width: 100,
                height: 70,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl: data.videoImage,
              ),
            ),
            IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert),)
         ]
       ),
      ),
    );
  }

  void onMoreClick() {
  }
}