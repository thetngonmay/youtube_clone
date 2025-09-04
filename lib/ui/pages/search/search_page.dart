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
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           padding: EdgeInsets.only(left: 10),
           child: Row(
             children: [
               IconButton(onPressed: onRefreshClick, icon: Icon(Icons.replay_circle_filled_outlined,size: 35,)),
               SizedBox(width: 20,),
               Row(
                 children: [
                   Padding(padding: EdgeInsets.only(top: 20)),
                   Text("bolbbalgan4",style: TextStyle(color: Colors.black,fontSize: 14),),
                 ],
               ),
               SizedBox(width: 100,),
               ClipRRect(
                 borderRadius: BorderRadius.circular(5),
                 child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjYOzFUms2YtMNvdKjy9saeeGbve6kKP_IjA&s",
                   width: 70,
                   height: 50,
                   fit: BoxFit.cover,
                 ),
               ),
               SizedBox(width: 15,),
               IconButton(onPressed: onArrowClick, icon: Icon(Icons.arrow_back))
             ],
           ),
         ),

       ],
     ),
   );

  }


  void onMiclick() {
  }

  void onRefreshClick() {
  }

  void onArrowClick() {
  }
}
 