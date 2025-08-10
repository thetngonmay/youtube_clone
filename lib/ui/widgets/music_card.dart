import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Image(image: AssetImage("images/flower.jpg")),
                    Positioned(
                      right: 7,
                      bottom: 7,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.music_note, color: Colors.white,),
                            Text("5:12",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/mileycyrus.jpeg"),
                      radius: 30,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Miley Cyrus - Flowers (Official Video",style: TextStyle(fontSize: 16),),
                            Wrap(
                              spacing: 5,
                              children: [
                                Text("Maung Maung(Musical Entertainment)"),
                                Container(
                                  color: Colors.grey,
                                  width: 2,
                                  height: 2,
                                ),
                                Text("118k views"),
                                Container(
                                  color: Colors.grey,
                                  width: 2,
                                  height: 2,
                                ),
                                Text("2 weeks ago")

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert))
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }


  void onMoreClick() {

  }
}