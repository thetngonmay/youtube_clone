import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscription_stories_view.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscription_tab_view.dart';

import '../notification/notification_page.dart' show NotificationPage;
import '../search/search_page.dart' show SearchPage;

class SubscribtionsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SubscribtionsPageState();
  }
}
class SubscribtionsPageState extends State<SubscribtionsPage> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoiMtJG_PC4lsb3-GZAiTZkUXAm3VlkJC1Ag&s",
                  width: 40,
                  height: 40,
                ),
              ),
            ]
        ),
        title: Text("YouTube"),
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast)),
          IconButton(
            onPressed: onNotificatiionClick,
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SubscriptionStoriesView(),
            SubscriptionTabView((selectedTab) {
              print(selectedTab);
            }),
          ],
        ),
      ),
    );
  }
  void onCastClick() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text("Select a device"),
                ),
                ListTile(
                  leading: IconButton(onPressed: onLinkClick, icon: Icon(Icons.phonelink)),
                  title: Text("Link with TV code"),
                ),
          ListTile(
          leading: IconButton(onPressed: onLearnClick, icon: Icon(Icons.info_outline)),
          title: Text("Learn more"),
          ),
              ],
            ),
          );
        }
    );
  }
  void onNotificatiionClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationPage()),
    );
  }
  void onSearchClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchPage()),
    );
  }

  void onLinkClick() {
  }

  void onLearnClick() {
  }
}
