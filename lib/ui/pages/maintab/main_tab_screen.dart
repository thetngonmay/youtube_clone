import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/home/my_home_page.dart';
import 'package:youtube_clone/ui/pages/profile/profile_page.dart';
import 'package:youtube_clone/ui/pages/shorts/shorts_page.dart';
import 'package:youtube_clone/ui/pages/subscriptions/subscriptions_page.dart';

class MainTabScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainTabScreenState();
  }
}

class MainTabScreenState extends State<MainTabScreen>{
  var _tabSelectedIndex = 0;
  PageController? controller;
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  void _onTab(int value){
    setState(() {
      _tabSelectedIndex = value;
    });
    controller?.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: _onTab,
        children: <Widget>[
          Myhomepage(),
          ShortsPage(),
          SubscribtionsPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabSelectedIndex,
          onTap: _onTab,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_filled),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.app_shortcut_outlined),
              activeIcon: Icon(Icons.app_shortcut_rounded),
              label: "Shorts"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              activeIcon: Icon(Icons.subscriptions_rounded),
              label: "Subscriptions"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              activeIcon: Icon(Icons.person),
              label: "Profile"
            )
          ]
      ),

    );
  }

}