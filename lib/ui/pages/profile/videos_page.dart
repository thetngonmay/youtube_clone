import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/profile/profile_top_tab.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscription_tab_view.dart';

class VideosPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return VideosPageState();
  }

}
class VideosPageState extends State<VideosPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast)),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
          IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileTopTab((selectedTab){
            print(selectedTab);
    }),
          Container(
            padding: EdgeInsets.zero,
            child: ClipRRect(
              borderRadius: BorderRadius.zero,
              child: CachedNetworkImage(
                width: 420,
                height: 400,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context,url,progress)=>Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl: "https://static.vecteezy.com/system/resources/previews/015/275/318/non_2x/beautiful-beach-tropical-beach-background-as-summer-landscape-white-sand-and-calm-sea-for-beach-banner-perfect-beach-scene-vacation-and-summer-holiday-concept-boost-up-color-process-photo.jpg",
              ),
            ),
          ),
          SizedBox(height: 30,),
         Container(
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Share your video with anyone,or everyone.")
             ],
           ),
         ),
          SizedBox(height: 30,),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      Text("Create",style: TextStyle(color: Colors.white,fontSize: 25),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void onCastClick() {
  }

  void onSearchClick() {
  }

  void onMoreClick() {
  }
}