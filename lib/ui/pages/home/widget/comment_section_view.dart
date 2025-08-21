import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentSectionView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      height: 100,
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
              child:Row(
                children: [
                  Text("Comments", style: TextStyle(color: Colors.black, fontSize: 16))
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

}