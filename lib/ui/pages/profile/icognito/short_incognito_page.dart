import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShortIncognitoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ShortIncognitoPageState();
  }
  
}
class ShortIncognitoPageState extends State<ShortIncognitoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Short"),
      ),
    );
  }
  
}