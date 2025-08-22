import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HelpPageState();
  }
  }
  class HelpPageState extends State<HelpPage>{
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        actions: [
          IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text("Popular help resources",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            ),
            Row(
              children: [
                IconButton(onPressed: onBookClick, icon: Icon(Icons.library_books_outlined)),
                Text("Channel or account terminations"),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: onBookClick, icon: Icon(Icons.library_books_outlined)),
                Text("Replace or delete your video"),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: onBookClick, icon: Icon(Icons.library_books_outlined)),
                Text("Update the YouTube app for Android 5.0 and 5.1"),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: onBookClick, icon: Icon(Icons.library_books_outlined)),
                Text("Create a YouTube channel"),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: onBookClick, icon: Icon(Icons.library_books_outlined)),
                Text("Manage channek setting"),
              ],
            ),

            Container(
              width: 390,
              decoration:  BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search help',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 30)

                ),
              ),
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 5,
            ),
            ListTile(
              title: Text("Need more help?",style: TextStyle(fontSize: 17),),
            ),
            Container(
              width: 390,
              height: 100,
              decoration:  BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Post to the Help Community',
                        prefixIcon: Icon(Icons.chat),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 30)
                    ),
                  ),
                  Padding(
                      padding:EdgeInsets.only(right: 70),
                      child: Text('Get answers from community members',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,

                      )
                  )
                  ),
                ],
              ),
              ),
            Divider(
              color: Colors.grey[200],
              thickness: 5,
            ),
            Row(
              children: [
                IconButton(onPressed: onFeedbackClick, icon: Icon(Icons.feedback_outlined)),
                Text("Send Feedback")
              ],
            )
          ],
        ),
      ),
    );
  }
  void onFeedbackClick(){

  }

  
  void onMoreClick() {
  }

  void onBookClick() {
  }

  void onChatClick() {
  }
}