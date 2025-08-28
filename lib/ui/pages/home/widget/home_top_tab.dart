import 'package:flutter/material.dart';

class HomeTopTab extends StatefulWidget{
  final Function selectedTab;
  const HomeTopTab(this.selectedTab, {super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeTopTabState();
  }

}

class HomeTopTabState extends State<HomeTopTab> with SingleTickerProviderStateMixin{
  var tabList = ["All","New to you","Music","Sai Htee Saing", "Mixes", "Podcasts","Live","Gaming","Playlist","Text","Country Music"];
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
        length: tabList.length,
        initialIndex: 0,
        vsync: this)
    ..addListener((){
      if(!tabController.indexIsChanging){
        widget.selectedTab(tabController.index);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only( bottom: 15),
      child: TabBar(
        isScrollable: true,
        controller: tabController,
        tabAlignment: TabAlignment.start,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).primaryColor
        ),
        indicatorPadding: EdgeInsets.only(right: 1),
        labelPadding: EdgeInsets.only(left: 10, right: 5),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        dividerHeight: 0,
        tabs: [
          ...tabList.map((tabData) => Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(tabData),
          ))
        ],
      ),
    ) ;
  }

}
