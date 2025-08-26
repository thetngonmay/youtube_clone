import 'package:flutter/material.dart';

class SubscriptionTapPage extends StatefulWidget{
  final Function selectedTab;

  SubscriptionTapPage(this.selectedTab);

  @override
  State<StatefulWidget> createState() {
    return SubscriptionTapPageState();
  }
}
class SubscriptionTapPageState extends State<SubscriptionTapPage>with SingleTickerProviderStateMixin {
  var tabList = ["All", "today", "videos", "Shorts", "Live", "Post", "Continue watching", "Unwatched"];
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(
        length: tabList.length,
        initialIndex: 0,
        vsync: this)
      ..addListener(() {
        if (!tabController.indexIsChanging) {
          widget.selectedTab(tabController.index);
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 280),
      child: TabBar(
        isScrollable: true,
        controller: tabController,
        tabAlignment: TabAlignment.start,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        indicatorPadding: EdgeInsets.only(right: 1),
        labelPadding: EdgeInsets.only(left: 10,right: 10),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        dividerHeight: 0,
        tabs: [
          ...tabList.map((tabData)=>Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(tabData),
          )
          )
        ],),
    );
  }
}
