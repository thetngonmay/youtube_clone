import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget{
  final Function selectedTab;
  MusicPage(this.selectedTab) {}
  @override
  State<StatefulWidget> createState() {
    return MusicPageState();
  }

}
class MusicPageState extends State<MusicPage> with SingleTickerProviderStateMixin {
  var tabList = ['Home', 'Posts'];
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
        actions: [
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search),),
          IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: TabBar(
                isScrollable: true,
              controller: tabController,
              tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: Colors.white,
              ),
              dividerHeight: 0,
              tabs: [
                ...tabList.map((tabData)=>Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Colors.white,

          ),
          child: Text(tabData),
                  color: Colors.black,
            ),
                ),
            ]
          ),
    ),
        ],
      ),
    );

  }


  void onSearchClick() {
  }

  void onMoreClick() {
  }
}