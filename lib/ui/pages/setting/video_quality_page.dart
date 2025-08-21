import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoQualityPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return VideoQualityPageState();
  }
}
class VideoQualityPageState extends State<VideoQualityPage>{
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video quality preferences"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: [
                ListTile(
                  subtitle: Text("Select your default steaming quality for all video.You can change streaming quality in player options for single videos"),
                ),
                Divider(
                  height: 10,
                  color: Colors.blue,
                  thickness: 2,
                ),
                ListTile(
                  title: Text("VIDEO QUALITY ON MOBILE NETWORKS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                ListTile(
                  title: Text("Auto()recommended"),
                  subtitle: Text("Adjusts to give you the best experience for your conditions"),
                  trailing: Switch(
                      value: isSwitched,
                      onChanged: (newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      }
                  ),
                ),
                ListTile(
                  title: Text("Higher picture quality"),
                  subtitle: Text("Uses more data"),
                  trailing: Switch(
                      value: isSwitched,
                      onChanged: (newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      }
                  ),
                ),
                ListTile(
                  title: Text("Data saver"),
                  subtitle: Text("Lower picture quality"),
                  trailing: Switch(
                      value: isSwitched,
                      onChanged: (newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      }
                  ),
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 2,
                  height: 10,
                ),
                ListTile(
                  title: Text("VIDEO QUALITY ON WI-FI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                ListTile(
                  title: Text("Auto()recommended"),
                  subtitle: Text("Adjusts to give you the best experience for your conditions"),
                  trailing: Switch(
                      value: isSwitched,
                      onChanged: (newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      }
                  ),
                ),
                ListTile(
                  title: Text("Higher picture quality"),
                  subtitle: Text("Uses more data"),
                  trailing: Switch(
                      value: isSwitched,
                      onChanged: (newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      }
                  ),
                ),
                ListTile(
                  title: Text("Data saver"),
                  subtitle: Text("Lower picture quality"),
                  trailing: Switch(
                      value: isSwitched,
                      onChanged: (newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      }
                  ),
                ),
              ]
          )
      ),
    );
  }

}