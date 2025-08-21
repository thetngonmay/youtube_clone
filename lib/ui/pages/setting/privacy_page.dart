import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PrivacyPageState();
  }
}
class PrivacyPageState extends State<PrivacyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("My Ad Centre"),
              subtitle: Text("You can choose whether the ads that you see on YouTube are personalised and control the info used to presonalise them"),
            ),
      ListTile(
        title: Text("About your location"),
        subtitle: Text(""),
      ),
      ListTile(
        title: Text("Blocked contacts"),
        subtitle: Text(""),
      ),
      ListTile(
        title: Text("YouTube Terms of Service"),
        subtitle: Text("Read YouTube's Terms of Service"),
      ),
        ],

        ),
      ),
    );
  }

}