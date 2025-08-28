import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/search/search_page.dart';

class PurchasesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return PurchasesPageState();

  }

}
class PurchasesPageState extends State<PurchasesPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Purchases and memberships"),
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast),),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search,)),
          IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Offers from YouTube",style: TextStyle(fontSize: 20),),
            ),
      SizedBox(height: 50,),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: CachedNetworkImage(
                width: 70,
                height: 50,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context ,url ,progress)=>Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl: "https://icons.iconarchive.com/icons/papirus-team/papirus-apps/512/youtube-icon.png",
              ),
            ),
          ),
          Text("Music",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)
        ],
      ),
            SizedBox(height: 50,),
            ListTile(
              title: Text("Student plan.First month free!"),
            subtitle: Text("Verify your student status to get music ad-free, offline and in the background-all at a discounted price.Terms apply."),
            ),
            Container(
              padding: EdgeInsets.only(left: 280),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Learn more",style: TextStyle(color: Colors.blue,),)
                ],
              ),
              
            )
          ],
        ),
      ),
    );
  }


  void onCastClick() {
    showModalBottomSheet(
        context: context, 
        builder: (BuildContext context){
          return Container(
            width: double.infinity,
            height: 200,
            child: Column(
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
          ),
              ],
            ),
          );
        }
    );
  }

  void onSearchClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
  }

  void onMoreClick() {
  }

  void onLinkClick() {
  }

  void onLearnClick() {
  }
}