import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../model/music_drawer_model.dart';

class MusicSliderView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => MusicSliderViewState();
}

class MusicSliderViewState extends State<MusicSliderView>{

  List<MusicDrawerModel> musicDrawerDataList = [
    MusicDrawerModel(
      'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
      'Sabrina Carpenter',
      '521 views',
      '5 months',
      'Sabrina Carpenter - Feather (Official Video) Stream Feather ',
    ),
    MusicDrawerModel(
      'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
      'Sabrina 1',
      '521 views',
      '5 months',
      'Sabrina Carpenter - Feather (Official Video) Stream Feather ',
    ),
    MusicDrawerModel(
      'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
      'Sabrina 2',
      '521 views',
      '5 months',
      'Sabrina Carpenter - Feather (Official Video) Stream Feather ',
    ),
    MusicDrawerModel(
      'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
      'Sabrina 3',
      '521 views',
      '5 months',
      'Sabrina Carpenter - Feather (Official Video) Stream Feather ',
    ),
  ];

  PageController? controller;
  int currentPage = 0;
  Timer? autoSlideTimer;

  @override
  void initState() {
    controller = PageController(initialPage: 0)
      ..addListener((){
        int nextPage = controller!.page!.round();
        if(currentPage != nextPage){
          setState(() {
            currentPage = nextPage;
          });
        }
      });

    autoSlideTimer = Timer.periodic(Duration(seconds: 5), (timer){
      if(controller != null && controller!.hasClients){
        int nextPage = (currentPage + 1) % musicDrawerDataList.length;
        controller?.animateToPage(nextPage, duration: Duration(microseconds: 300), curve: Curves.easeInOut);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              ...musicDrawerDataList.map((musicData){
                return Padding(
                  padding: EdgeInsets.zero,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      CachedNetworkImage(
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        imageUrl: musicData.imageUrl,
                        progressIndicatorBuilder: (context, url, progress) =>
                            Center(
                              child: CircularProgressIndicator(
                                value: progress.progress,
                              ),
                            ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(1),
                                    Colors.black.withOpacity(0.8),
                                    Colors.black.withOpacity(0.001)
                                  ]
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    musicData.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text("${musicData.views}.${musicData.duration}", style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      musicData.description,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              })
            ],
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Row(
                children: List.generate(musicDrawerDataList.length, (index){
                  return Padding(
                    padding: EdgeInsets.all(3),
                    child: GestureDetector(
                      onTap: (){
                        controller?.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.easeInOut);
                      },
                      child: AnimatedContainer(
                        duration: Duration(microseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 1),
                        width: currentPage == index ? 12 : 8,
                        height: currentPage == index? 12 : 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentPage == index ? Colors.green: Colors.grey[400]
                        ),
                      ),
                    ),
                  );
                })
            ),
          )
        ],
      ),
    );
  }


  @override
  void dispose() {
    controller?.dispose();
    autoSlideTimer?.cancel();
    super.dispose();
  }

}