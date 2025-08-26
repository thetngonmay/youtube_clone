import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/notification/notification_page.dart';
import 'package:youtube_clone/ui/pages/search/search_page.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return ProfilePageState();
  }
  
}
class  ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast),),
          IconButton(onPressed: onNotificationClick, icon: Icon(Icons.notifications_none),),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search),),
          IconButton(onPressed: onSettingClick, icon: Icon(Icons.settings_outlined)),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: Text(
                        "T",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "thetngon may",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(
                          "Create a channel",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: onSwitchAccountClick,
                            icon: Icon(Icons.switch_account_outlined),
                          ),
                          Text("Switch account"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 1,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: onGoogleClick,
                                  icon: Icon(Icons.g_mobiledata),
                                ),
                                Text("Google Account"),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 1,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: onIcognitoClick,
                                        icon: Icon(Icons.private_connectivity_outlined),
                                      ),
                                      Text("Turn on Icognito"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:15 ,right: 15,top: 25,bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("History",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text("View all",style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context,index){
                    return SizedBox(width: 10,);
                  },
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index){
                    if (index==3-1){
                      return Column(
                        children: [
                          Expanded(
                              child: Center(child: CircleAvatar(
                                child: Icon(Icons.add),
                              ))
                          ),
                          Text("New Playlist"),
                          SizedBox(height: 20,)
                        ],
                      );
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: CachedNetworkImage(
                              width: 150,
                              height: 70,
                              fit: BoxFit.cover,
                              progressIndicatorBuilder: (context ,url ,progress)=>Center(
                                child: CircularProgressIndicator(
                                  value: progress.progress,
                                ),
                              ),
                              imageUrl: "https://cdn.britannica.com/57/171257-050-00148C6C/Taylor-Swift-2010.jpg",
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New Playlist"),
                                Text("Private")
                              ],
                            ),
                            IconButton(onPressed: (){

                            }, icon: Icon(Icons.more_vert_outlined))
                          ],
                        )
                      ],
                    );
                  },
                )
              ),

              Padding(
                padding: EdgeInsets.only(left:15 ,right: 15,top: 25,bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("History",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text("View all",style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context,index){
                      return SizedBox(width: 10,);
                    },
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index){
                      if (index==3-1){
                        return Column(
                          children: [
                            Expanded(
                                child: Center(child: CircleAvatar(
                                  child: Icon(Icons.add),
                                ))
                            ),
                            Text("New Playlist"),
                            SizedBox(height: 20,)
                          ],
                        );
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              child: CachedNetworkImage(
                                width: 150,
                                height: 70,
                                fit: BoxFit.cover,
                                progressIndicatorBuilder: (context ,url ,progress)=>Center(
                                  child: CircularProgressIndicator(
                                    value: progress.progress,
                                  ),
                                ),
                                imageUrl: "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("New Playlist"),
                                  Text("Private")
                                ],
                              ),
                              IconButton(onPressed: (){

                              }, icon: Icon(Icons.more_vert_outlined))
                            ],
                          )
                        ],
                      );
                    },
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 50)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onVideoClick,
                        icon: Icon(Icons.video_collection_outlined),
                      ),
                      Text(
                        "Your Videos",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onDownloadsClick,
                        icon: Icon(Icons.arrow_downward_outlined),
                      ),
                      Text(
                        "Downloads",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                Divider(
          color: Colors.grey,
          thickness: 2,
                ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onMovieClick,
                        icon: Icon(Icons.movie_creation_outlined),
                      ),
                      Text(
                        "Your Movies",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onYouTubeClick,
                        icon: Icon(Icons.video_settings_outlined),
                      ),
                      Text(
                        "Get YouTube Premium",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                Divider(
          color: Colors.grey,
          thickness: 2,
                ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onTimeWatchClick,
                        icon: Icon(Icons.add_chart_outlined),
                      ),
                      Text(
                        "Time Watched",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onHelpClick,
                        icon: Icon(Icons.help_outline_outlined),
                      ),
                      Text(
                        "help and feedback",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
                ]
          ),
        ),
    );
  }
  void onCastClick() {}
  void onNotificationClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationPage()));
  }
  void onSearchClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
  }
  void onSettingClick() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingPage()));
  }
  void onSwitchAccountClick() {}
  void onGoogleClick() {}
  void onIcognitoClick() {}
  void onVideoClick() {}
  void onDownloadsClick() {}
  void onRadioClick() {}
  void onMovieClick() {}
  void onYouTubeClick() {}
  void onTimeWatchClick() {}
  void onHelpClick() {
  }
}