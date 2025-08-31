import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentSectionView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(1, (index) {
            return Container(
              width: 380,
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(12),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("comments",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ],
            ),
            SizedBox(height: 10),
            Row(
            children: [
              CircleAvatar(
            child: Text("M"),
            backgroundColor: Colors.blue,
            ),
            SizedBox(width: 10),
            Expanded(
            child: Text("Like this song",style: TextStyle(fontSize: 15),
            ),
            ),
            ],
            ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

}