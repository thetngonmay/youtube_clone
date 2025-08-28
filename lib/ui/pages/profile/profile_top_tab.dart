import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTopTab extends StatefulWidget {
  final Function selectedTab;

  ProfileTopTab(this.selectedTab) {}

  @override
  State<StatefulWidget> createState() {
    return ProfileTopTabState();
  }
}

class ProfileTopTabState extends State<ProfileTopTab>
    with SingleTickerProviderStateMixin {
  var tabList = ['Videos', 'shorts', 'Live'];
  late TabController tabController;

  @override
  void initState() {
    tabController =
        TabController(length: tabList.length, initialIndex: 0, vsync: this)
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
      padding: EdgeInsets.only(bottom: 15),
      child: TabBar(
        isScrollable: true,
        controller: tabController,
        tabAlignment: TabAlignment.start,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.black,
        ),
        tabs: [
          ...tabList.map((tabData) => Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
              ),
              child: Text(tabData),
            ),
          ),
        ],
      ),
    );
  }
}
