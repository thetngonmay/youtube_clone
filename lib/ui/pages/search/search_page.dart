import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return SearchPageStates();

  }

}
 class SearchPageStates extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: TextField(
         decoration: InputDecoration(
           border: OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(30))
           ),
           hintText: 'Search YouTube',
         ),
       ),
       actions: [
         IconButton(onPressed: onMiclick , icon: Icon(Icons.mic)),
       ],
       
     ),
   );

  }


  void onMiclick() {
  }
}
 