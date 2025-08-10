import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(left: 15,top: 15,bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/mileycyrus.jpeg"),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("For you", style: TextStyle(fontSize: 20),),
                    Text("Maung Maung(Musical Entertainment)"),
                    Text("1 day ago"),
                 ],
                             ),
              ),
            ),
      Image(
          image: AssetImage("images/mileycyrus.jpeg"),
        width: 100,
      ),
       IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert),)     
      ]
    ),
    ),
    );
  }

  void onMoreClick() {
  }
}