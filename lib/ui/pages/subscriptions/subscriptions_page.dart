import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_model.dart';
import 'package:youtube_clone/ui/pages/subscriptions/music_list_view.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscription_stories_view.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscription_tab_view.dart';
import 'package:youtube_clone/ui/widgets/music_card.dart';

import '../notification/notification_page.dart' show NotificationPage;
import '../search/search_page.dart' show SearchPage;

class SubscribtionsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SubscribtionsPageState();
  }

}
class SubscribtionsPageState extends State<SubscribtionsPage>{
ScrollController scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YouTube"),
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast),),
          IconButton(onPressed: onNotificatiionClick, icon: Icon(Icons.notifications_none),),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search),),
        ],
      ),
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SubscriptionStoriesView(),
              SubscriptionTabView((selectedTab){
                print(selectedTab);
              }),

            ],
          ),
        ),
        );
  }


  void onCastClick() {
  }
  void onNotificatiionClick(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));

  }

  void onSearchClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
  }
}