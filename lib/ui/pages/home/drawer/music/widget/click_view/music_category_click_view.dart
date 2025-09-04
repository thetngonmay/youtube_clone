import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_category_data.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/click_view/custom_list_view.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/click_view/report_dialog.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/click_view/summer_hit_click.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart';
import 'package:youtube_clone/ui/pages/setting/help_page.dart';
import 'package:youtube_clone/ui/pages/setting/watch_on_page.dart';

import '../../../../../../../model/music_drawer_model.dart';
import '../../../../../setting/setting_page.dart';

class MusicCategoryClickView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MusicCategoryClickViewState();
  }

}
class MusicCategoryClickViewState extends State<MusicCategoryClickView>{
  final MusicCategoryData summerHitsData=MusicCategoryData(
    "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
    "Summer Hits 2025",
    "The Sound of summer 2025!",
    51,
  );
  List<MusicDrawerModel> musicDrawerDataList = [
    MusicDrawerModel(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWsVBbyq3CFzJ7ZkDySMOc_6FNLxyl9DR_nw&s',
      'IU',
      '521 views',
      '5 months',
      'Iu Song Lyrics ·',
    ),
    MusicDrawerModel(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9zgJnJYM1pU1sBbZOn7YLzoBtVBHwiP_3tg&s',
      'BolBBalgan4',
      '521 views',
      '5 months',
      'Bolbbalgan4 - 나의 사춘기에게 (To My Youth) ',
    ),
    MusicDrawerModel(
      'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
      'Sabrina 2',
      '521 views',
      '5 months',
      'Sabrina Carpenter - Feather (Official Video) Stream Feather ',
    ),
    MusicDrawerModel(
      'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
      'Sabrina 3',
      '521 views',
      '5 months',
      'Sabrina Carpenter - Feather (Official Video) Stream Feather ',
    ),
    MusicDrawerModel(
      'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
      'Sabrina 3',
      '521 views',
      '5 months',
      'Sabrina Carpenter - Feather (Official Video) Stream Feather ',
    ),
  ];

  List<MusicDrawerModel> get musicList => musicDrawerDataList;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:  AppBar(
       actions: [
         IconButton(onPressed: ()=> onCastClick(context), icon: Icon(Icons.cast)),
         IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
         PopupMenuButton<String>(
           onSelected: (String result){
             if(result=='report'){
               ReportDialog.showReportDialog(context);
             }
             else if(result=='tv'){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>WatchOnPage()));
             }
             else if(result=='help'){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>HelpPage()));
             }
           },
             itemBuilder: (BuildContext context)=> <PopupMenuEntry<String>>[
               const PopupMenuItem<String>(
                 value: 'report',
                   child: Text('Report Playlist'),
               ),
               const PopupMenuItem<String>(
                 value: 'tv',
                   child: Text('Watch on TV'),
               ),
               const PopupMenuItem<String>(
                 value: 'help',
                   child: Text('Help and feedback')),
             ]
         ),
       ],
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           SummerHitClick(categoryData: summerHitsData),
           SizedBox(height: 15),
           CustomListView(list: musicDrawerDataList),

         ],
       ),
     ),
   );
  }

}
