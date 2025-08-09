import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return SettingPageState();

  }

}
class SettingPageState extends State<SettingPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Settings"),
     ),
   );
   
  }
  
}
