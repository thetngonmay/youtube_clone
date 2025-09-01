
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/channel_view.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/music_slider.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/music_category_list_view.dart';

class MusicPage extends StatefulWidget {
  final Function selectedTab;

  MusicPage(this.selectedTab) {}

  @override
  State<StatefulWidget> createState() {
    return MusicPageState();
  }
}

class MusicPageState extends State<MusicPage>
    with SingleTickerProviderStateMixin {

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

  var summerDataList = ['1', '2', '3', '4','5','6','7','8','9'];
  var todayDataList = ['10', '21', '32', '43','54','56','76','87','98'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
        actions: [
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
          IconButton(
            onPressed: onMoreClick,
            icon: Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabBar(
            isScrollable: true,
            controller: tabController,
            tabAlignment: TabAlignment.start,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Colors.white,
            ),

            tabs: [
              ...tabList.map(
                (tabData) => Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Text(tabData),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MusicSliderView(),
                  MusicChannelView(),
                  MusicCategoryListView(categoryName: "Summer Hits", dataList: summerDataList,),
                  MusicCategoryListView(categoryName: "Today Hits", dataList: todayDataList,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void onSearchClick() {}

  void onMoreClick() {}

  void onSubscribeClick() {
  }
}
