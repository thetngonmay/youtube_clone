import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchAccountSettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SwitchAccountSettingPageState();
  }
}
class SwitchAccountSettingPageState extends State<SwitchAccountSettingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch account"),
        
      ),
    );
  }

}