import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/profile/icognito/home_icognito_page.dart';
import 'package:youtube_clone/ui/pages/profile/icognito/subscriptions_incognito_page.dart';
import 'package:youtube_clone/ui/pages/profile/icognito/you_page.dart';

class IcognitoTabScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return IcognitoTabScreenState();
  }

}
class IcognitoTabScreenState extends State<IcognitoTabScreen>{
  var _tabSelectedIndex=0;
  PageController? controller;
  @override
  void initState() {
    controller=PageController(initialPage: 0);
    super.initState();
  }
  void _onTab(int value){
    setState(() {
      _tabSelectedIndex =value;
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
         HomeIcognitoPage(),
         SubscriptionsIncognitoPage(),
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
         label: "Home",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.app_shortcut),
           activeIcon: Icon(Icons.app_shortcut_rounded),
           label: "Short",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.subscriptions_outlined),
           activeIcon: Icon(Icons.subscriptions_rounded),
           label: "Subscriptions",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.private_connectivity_outlined),
           activeIcon: Icon(Icons.private_connectivity),
           label: "You",
         ),
       ],
     ),
   );
  }

}