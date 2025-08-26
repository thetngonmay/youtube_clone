import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CaptionPreferencesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CaptionPreferencesPageState();
  }

}
class CaptionPreferencesPageState extends State<CaptionPreferencesPage>{
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Caption Preferences",style: TextStyle(fontSize: 30),),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 40,bottom: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  child: CachedNetworkImage(
                    width: 370,
                    height: 200,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: (context ,url ,progress)=>Center(
                      child: CircularProgressIndicator(
                        value: progress.progress,
                      ),
                    ),
                    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYK0Q-QwYsnjKUIOLoUI7hEv80pIFNhXzrgQ&s",
                  ),
                  ),
                ),
            ListTile(
              title: Text("Show Captions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              trailing: Switch(
                  value: isSwitched,
                onChanged: (value)=>
                    setState(() => isSwitched=value),
            ),
            ),
            ListTile(
              title: Text("Caption size and style",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Text("Default text size"),
            ),
            ListTile(
              title: Text("More options",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              subtitle: Text("Not all apps support these caption preferences",style: TextStyle(fontSize: 14,),),
            ),

          ],
        ),
      )

    );
  }


  void onArrowClick() {
  }
}
