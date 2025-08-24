import 'package:flutter/cupertino.dart';

class ShortsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return ShortPageState();
  }
  
}

class ShortPageState extends State<ShortsPage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Shorts"),
    );
  }
  
}