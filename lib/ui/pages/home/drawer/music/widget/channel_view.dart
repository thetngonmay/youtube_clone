import 'package:flutter/material.dart';

class MusicChannelView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 35,
                child: Text("M",style: TextStyle(color: Colors.black,fontSize: 30),),
              ),
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Music",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("124M subscribers",style: TextStyle(color: Colors.grey,fontSize: 14),)
                ],
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 60)
                    ),
                    onPressed:(){},
                    child: Text("Subscribe"),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 25,right: 25,top: 9,bottom: 9),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 11,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkTh9nOX8DutAyJvOzlzn_kO-UF6LxNNZb4g&s",),
                          ),
                          SizedBox(width: 5,),
                          Text("YouTube Music")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

}