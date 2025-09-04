import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_category_data.dart';

class SummerHitClick extends StatelessWidget{
  final MusicCategoryData categoryData;

  const SummerHitClick({super.key, required this.categoryData});

  @override
  Widget build(BuildContext context) {
   return Container(
    child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(categoryData.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent,
                        ]
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(categoryData.title,style: TextStyle(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    const Text('YouTube Music',style: TextStyle(color: Colors.white70,fontSize: 16),),
                                    SizedBox(height: 3,),
                                    Text('50 Videos',style: TextStyle(color: Colors.white70,fontSize: 14),),
                                    SizedBox(height: 5,),
                                    Text(categoryData.description,style: TextStyle(color:Colors.white,fontSize: 15,),
                                    ),
                                  ],
                                )
                            ),
                             Transform.translate(
                               offset: Offset(0, 75),
                               child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(onPressed: onSaveClick, icon: Icon(Icons.bookmark_border,color: Colors.white,size: 24,),
                                    ),
                                    SizedBox(width: 3,),
                                    IconButton(onPressed: onDownloadClick, icon: Icon(Icons.download,color: Colors.white,size: 24,),
                                    ),
                                    SizedBox(width: 3,),
                                    IconButton(onPressed: onShareClick, icon: Icon(Icons.share_outlined,color: Colors.white,size: 24,),

                                    ),
                                  ],
                                ),
                             ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FilledButton.icon(
                                onPressed: (){
                                },
                              icon: Icon(Icons.play_arrow,color: Colors.black,),
                              label: Text("Play all",style: TextStyle(color: Colors.black),
                              ),
                              style: FilledButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 50)

                              )
                            ),
                            SizedBox(width: 15,),
                            OutlinedButton.icon(
                                onPressed: (){

                            },
                              icon: Icon(Icons.shuffle,color: Colors.white,),
                              label: Text("Shuffle",style: TextStyle(color: Colors.white),),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                padding: EdgeInsets.symmetric(horizontal: 50)
                              ),
                            )
                          ],
                        ),

                      ],
                    ),

                ),
              ],
            ),
          )
        ],
  ),

   );
  }
  void onSaveClick() {
  }

  void onDownloadClick() {
  }

  void onShareClick() {
  }
}