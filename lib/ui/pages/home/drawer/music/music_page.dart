import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_drawer_model.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/report_modal.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/share_modal.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/channel_view.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/music_slider.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/music_category_list_view.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';

import '../../../../../model/music_category_data.dart';

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

  List<MusicCategoryData> summerDataList = [
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "Summer Hits 2025",
      "The Sound of summer 2025!",
      51,
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Ultimate Summer Hits",
      "Turn the sun all the way up to eleven with the ultimate playlist of songs that sound...",
      95,
    ),
    MusicCategoryData(
      "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
      "Sunshine Pop",
      "Brighten any day with this ridiculously catchy mix of feel-food pop songs from the past decade",
      51,
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "sad summer",
      "It's OK!!!",
      54,
    ),
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "Classic Rock Summer",
      "Some songs just sound like summertime.Catch some rays and groove to these essential warm-weather classic rock jams",
      100,
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Indie Heatwave",
      "Re-live those summer vibes with this collection o upbeats indie anthems.",
      85,
    ),
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "Festival Anthems",
      "Summer headliners past and present.",
      94,
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Summer DAnce Classics",
      "Scorching hits grom today and summers past",
      71,
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Summer House",
      "Your electronic oasis",
      131,
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Hip Hop+R&B Summer Hits",
      "Biggest tracks for a perfect summer.",
      61,
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "UK Rap Summer Hits",
      "A selection of UK Rap Hits for your summer enjoyment ",
      96,
    ),
  ];
  List<MusicCategoryData> todayDataList = [
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "The Hit List",
      "The home of today's biggest and honttest nits",
      50
    ),
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "NEON:Pop Hits",
      "All in pop that's new exciting and out now",
      50
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Highline:Today's R&B Hits",
      "Your destination for today's top US R&B tracks.",
      83
    ),
    MusicCategoryData(
      "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
      "Hits Remixed",
      "Upbeat remixes of recent pop hits",
        50
    ),
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "SAY NO MORE:Rap + R&B Hits",
      "The best in Rap,Grime,Drill,Afropop and R&B",
      53
    ),
    MusicCategoryData(
      "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
      "Chemistry: Fresh Dance Hits",
      "This month's biggest new Dance tracks!",
        133
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Hitss Unplugged",
      "Acoustic versions of the latest chart hits.",
      50
    ),
    MusicCategoryData(
        "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
        "Motive: UK Rap",
        "The biggest tracks from the hottest acts in UK rap.",
      50
    ),
    MusicCategoryData(
      "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
      "The Grime Hotlist",
      "The best of today's UK Grime hits",
      52
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Afropoppin",
      "Shake those hops for your fix of agropop, agrobeats and crossover dancehall.",
      52
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Noise Riiot: Rock Hits",
      "The hottest rock records right now.",60
    ),
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "Feel",
      "Emotional pop with a lot of heart",
      50
    ),
  ];
  List<MusicCategoryData> newDataList = [
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "Re;eased",
      "The hottest new songs this week, served up fresh to you every Friday",
      50
    ),
    MusicCategoryData(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "Drum & Bass 2025",
      "Jump on the latest greatest Drum & Bass,Jungle,Liquid DnB",
      249
    ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Pop Fresh",
      "Hear the future of pop now.",
      50
    ),
    MusicCategoryData(
      "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
      "House Music 2025",
      "Today's fresh slappin House Music,big on YouTube",
      93
    ),
  ];
  List<MusicDrawerModel> oasisDataList=[
    MusicDrawerModel(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Oasis-Live Forever(Live At Knebworth)Taken from the",
      "1M views",
      "3 years ago",
      "Oasis"
    ),
    MusicDrawerModel(
      "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
      "OASIS - some Might Say (Live at Knebworth )[Sunday 11th August,1996]",
      "2.5M views",
      "3 years ago",
        "Oasis"
    ),
   MusicDrawerModel(
     "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Oasis-Better Man",
     "92K views",
     "3 years ago",
     "Oasis"
   ) ,
    MusicDrawerModel(
      "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
      "Oasis- the Hindu Times(Offical Live Performance)",
      "2M views",
      "10 years ago",
      "Oasis"
    ),
    MusicDrawerModel(
        "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
        "Oasis- Champagne Supernova",
        "664K views",
        "3 years ago",
        "Oasis"
    ),
    MusicDrawerModel(
        "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
        "Oasis- wonderwall(Live at Knebworth ,10 August'96",
        "6.7M views",
        "3 years ago",
        "Oasis"
    ),
  ];
  List<MusicCategoryData> popDataList = [
  MusicCategoryData(
  "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
  "NEON: Pop Hits",
      "All in pop that's new exciting and out now.",
    50
  ),
    MusicCategoryData(
      "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
      "Pop Gold",
      "Easy -going relaxed Pop grom the past few decades.",
      100
    ),
    MusicCategoryData(
        "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
        "Feel",
        "Emotional pop with a lot of heart",
        50
    ),
    MusicCategoryData(
        "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
        "Pop Fresh",
        "Hear the future of pop now.",
        50
    ),
    MusicCategoryData(
        "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
        "Pop Royalty",
        "New music grom your favourite pop artists",
        50
    ),
    MusicCategoryData(
        "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
        "OOs Sing - Alongs",
        "These epic pop hits from the 'OOs ar the kind that will make you sing out-loud",
        111
    ),
    MusicCategoryData(
        "https://upload.wikimedia.org/wikipedia/commons/5/55/Justin_Bieber_in_Rosemont%2C_Illinois_%282015%29_%28cropped%29.jpg",
        "70s Sing - Alongs",
        "Catchy hooks and big choruses from the 1970s",
        57
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
        actions: [
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
          PopupMenuButton<String>(
              onSelected: (String result) {
                if (result == 'share') {
                  ShareModal.showShareModal(context);
                }
                else if (result == 'report') {
                     ReportModal.showReportModal(context);
                }
              },

              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                    value: 'share',
                    child: Text('Share')),
            const PopupMenuItem<String>(
                value: 'report',
                child: Text('Report user'),
            )
          ]
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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
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
                  ChannelView(),
                  MusicCategoryListView(categoryName: "Summer Hits", dataList: summerDataList,),
                  MusicCategoryListView(categoryName: "Today Hits", dataList: todayDataList,),
                  MusicCategoryListView(categoryName: "New and trending", dataList: newDataList,),
                 // MusicDrawerModel(categoryName: "Oasis Live", dataList: oasisDataList),
                  MusicCategoryListView(categoryName: "Pop", dataList: popDataList)
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

  void onMoreClick() {

        }
  }

  void onSubscribeClick() {}
