import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExperimentalPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ExperimentialPageState();
  }

}
class ExperimentialPageState extends State<ExperimentalPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast),),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search),),
          IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert_outlined),),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(1)),
                    child: CachedNetworkImage(
                      width: 500,
                      height: 300,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (context ,url ,progress)=>Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                      imageUrl: "https://www.shutterstock.com/image-photo/retro-golden-microphone-headphones-on-600nw-694098472.jpg",
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 300),
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Premium",style: TextStyle(fontSize: 16,color: Colors.white),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text("Try experimental new features",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                    ListTile(
                      subtitle: Text("For a limited time,eligble Premium member have early access ti try out new features."),
                    ),
                    ListTile(
                      subtitle: Text("As a Premium member,you'll also enjoy watching YouTube ad-free, downloads, and more."),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 250),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent[400],
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get Premium",style: TextStyle(fontSize: 17,color: Colors.white),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Divider(
                  thickness: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(left: 50,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No experiments are available right now,come ",style: TextStyle(fontSize: 15),),
                      Text("back later.")
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: 380,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("Give your feedback,get rewarded",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),) ,
                        subtitle: Text("We want ti know your thoughts about YouTube and other Google products so that we can keep improving them."),
                      ),
                      ListTile(
                        subtitle: Text("Sign up to give feedback.If a study is a good fit for your profile,you'll receive a follow-up questionnaire and details about what the study involves, including next steps and location. After completinf the study,you'll get a gift card as a thank you for your time."),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 280),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Sign up",style: TextStyle(color: Colors.blue,),)
                    ],
                  ),
                ),
              ],
            ),
      ),
        ]
      ),
    ),
      ),
    );
  }


  void onCastClick() {
  }

  void onSearchClick() {

  }

  void onMoreClick() {
  }
}