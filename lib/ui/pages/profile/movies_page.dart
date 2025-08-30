import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart';

import '../setting/help_page.dart' show HelpPage;
import '../setting/privacy_page.dart' show PrivacyPage;
import '../setting/setting_page.dart' show SettingPage;
import '../setting/watch_on_page.dart' show WatchOnPage;

class MoviesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MoviesPageState();
  }

}
class MoviesPageState extends State<MoviesPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       actions: [
         IconButton(onPressed: ()=>onCastClick(context), icon: Icon(Icons.cast),),
         IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
         PopupMenuButton<String>(
           onSelected: (String result){
             if(result=='setting'){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=>SettingPage())
               );
             }
             else if(result=='tv'){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=>WatchOnPage()));
             }
             else if(result=='tc'){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=>PrivacyPage()));
             }
             else if(result=='help'){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=>HelpPage()));
             }
           },

           itemBuilder: (BuildContext context)=> <PopupMenuEntry<String>>[
             const PopupMenuItem<String>(
               value: 'setting',
               child: Text('Setting'),
             ),
             const PopupMenuItem<String>(
               value: 'tv',
               child: Text('Watch on TV'),
             ),
             const PopupMenuItem<String>(
               value: 'tc',
               child: Text('Terms and privacy policy'),
             ),
             const PopupMenuItem<String>(
               value: 'help',
               child: Text('Help and feedback'),
             )
           ],
         )
       ],
     ),
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
               padding: EdgeInsets.only(left: 30),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 CircleAvatar(
                   radius: 45,
                   backgroundImage: NetworkImage("https://atlas-content-cdn.pixelsquid.com/stock-images/symbol-movie-red-clapperboard-o00GRvD-600.jpg"),
                 ),
                 SizedBox(width: 20,),
                 Text("Films",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
               ],
             ),
           ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.zero,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: CachedNetworkImage(
                width: 500,
                  height: 300,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context,url,progress)=>Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkup2c8Drnt_Iy58pmIPhan43ZMRDYYNt6Cw&s",
              ),
            ),
          ),
           Container(
             padding: EdgeInsets.only(top: 30,left: 30,right: 30),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("You don't have any purchases",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                 SizedBox(
                   height: 10,
                 ),
                 Text("Movie and shows that you rent or buy will appear here",),
               ],
             ),
           )
         ],
       ),
     )
   );
  }

}
void onCastClick(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          width: double.infinity,
          height: 200,
          child: Row(
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
              )
            ],
          ),
        );

      });
}