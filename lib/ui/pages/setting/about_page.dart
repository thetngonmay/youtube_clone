import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AboutPageState();

  }

}
class AboutPageState extends State<AboutPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Google Privacy Policy"),
              subtitle: Text("Read Mobile Privacy Policy"),
            ),
            ListTile(
              title: Text("Open-source licences"),
              subtitle: Text("Licence details for open-source software"),
            ),
            ListTile(
              title: Text("App version"),
              subtitle: Text("20.32.41"),
            ),
            ListTile(
              title: Text("YouTube, a Google company"),
            ),
          ],
        ),
      ),
    );
  }

}