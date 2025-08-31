import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return UploadScreenState();
  }
  
}
class UploadScreenState extends State<UploadScreen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Upload"),
     ),
   );
  }
  
}