import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomBarPageState();
  }

}
class BottomBarPageState extends State<BottomBarPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5,right: 5),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: onHomeClick, icon: Icon(Icons.home),
                ),
                Text("Home"),
              ],
        ),
        ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: onShortClick, icon: Icon(Icons.video_collection_outlined),
                  ),
                  Text("Shorts"),
                ],
              ),
            ),
           Container(
             padding: EdgeInsets.only(left: 5,right: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center ,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(1, (index) {
                  return Container(
                    padding: EdgeInsets.zero,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      ),
                      ],
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: onCompassClick,
                              icon: Icon(Icons.add),
                          ),
                        ]
                    ),
                  );
                }),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:20 ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  IconButton(onPressed: onSubClick, icon: Icon(Icons.subscriptions_outlined),
                 ),
               Text("Subscriptions")
               ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5,bottom: 15),
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center ,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                  child: Text("T")
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5),
                    child: Column(
                      children: [
                        Text("You")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]
        ),
    ),
    );

  }


  void onHomeClick() {
  }

  void onShortClick() {
  }

  void onSubClick() {
  }

  void onClick() {
  }

  void onPluseClick() {
  }

  void onCompassClick() {
  }
}