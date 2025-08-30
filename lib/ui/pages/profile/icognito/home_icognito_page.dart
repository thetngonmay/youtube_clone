import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart';

class HomeIcognitoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeIcognitoPageState();
  }
}

class HomeIcognitoPageState extends State<HomeIcognitoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/1024px-YouTube_full-color_icon_%282017%29.svg.png",
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
        title: Text(
          "YouTube",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => onCastClick(context),
            icon: Icon(Icons.cast),
          ),
          IconButton(
            onPressed: onNotificationClick,
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: CachedNetworkImage(
                  width: 150,
                  height: 100,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(value: progress.progress),
                  ),
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/1024px-YouTube_full-color_icon_%282017%29.svg.png",
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onWatchClick,
                  icon: Icon(Icons.watch_later_outlined),
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search YouTube",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: onMiceClick, icon: Icon(Icons.mic)),
              ],
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 25),
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Try searching to get started",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Start watching videos to help us build a feed of videos that you'll love",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onNotificationClick() {}

  void onWatchClick() {}

  void onMiceClick() {}
}
