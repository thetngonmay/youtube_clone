import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/live_drawer_model.dart';

class LiveSlider extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LiveSliderState();
  }

}
class LiveSliderState extends State<LiveSlider>{
  List<LiveDrawerModel> liveDrawerDatalist=[
    LiveDrawerModel(
        'https://i.pinimg.com/736x/50/00/64/500064c3e16d2953f6c64b265a2e5b8d.jpg',
       '我在 I AM NOT HERE',
        ' I AM NOT HERE, but I will always be here.',
        '31M '
    ),
    LiveDrawerModel(
        'https://images.genius.com/54383ca594c70bd823b73dbc8ae679ed.872x872x1.jpg',
        '我在 I AM NOT HERE',
        ' I AM NOT HERE, but I will always be here.',
        '31M '
    ),
    LiveDrawerModel(
        'https://i1.sndcdn.com/artworks-0C0EYTlczf1d8XnJ-ZaChzw-t500x500.jpg',
        '王一博单曲合集',
        ' Songs of Wang Yibo (Single/EP) 王一博单曲合集.',
        '50.9K '
    ),
    LiveDrawerModel(
        'https://kingchoice.me/media/CACHE/images/96757f27b12c80d5e20df95fa4f5d591_mR7qzIg/8da0c6e9487c550853ef70a05f19881e.jpg',
        'SINGLES',
        ' The Rules of My World (2020) US World top 14 (peak chart position) 3.',
        '31M '
    ),
    LiveDrawerModel(
        'https://viberate-upload.ams3.cdn.digitaloceanspaces.com/prod/entity/artist/xiao-zhan-xiao-zhan-aF8FG',
        '肖战Xiao Zhan',
        ' 漂流Life of Us',
        '36M '
    ),
  ];
  PageController? controller;
  int currentPage=0;
  Timer? autoSlideTimer;

  int get index => index;
  @override
  void initState() {
   controller=PageController(initialPage: 0)
   ..addListener((){
     int nextPage=controller!.page!.round();
     if (currentPage !=nextPage){
       setState(() {
         currentPage=nextPage;
       });
     }
   });
   autoSlideTimer = Timer.periodic(Duration(seconds: 5), (timer){
     if(controller != null && controller!.hasClients){
       int nextPage = (currentPage + 1) % liveDrawerDatalist.length;
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
             ...liveDrawerDatalist.map((liveData){
               return Padding(
                   padding: EdgeInsets.zero,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                        imageUrl: liveData.imgUrl,
                        progressIndicatorBuilder: (context,url,progress)=>Center(
                          child: CircularProgressIndicator(
                            value: progress.progress,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 50,
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    textAlign: TextAlign.center,
                                    liveData.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                   Text(
                                     textAlign: TextAlign.center,
                                          liveData.description,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white
                                          ),
                                        ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "${liveData.watching}watching",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white
                                    ),
                                  ),
                          TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10)
                            ),
                            onPressed:(){},
                            child: Text("Watch live"),
                          ),
                                ],
                              ),
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
           right: 100,
           left: 150,
           child: Row(
               children: List.generate(liveDrawerDatalist.length, (index){
                 return Padding(
                   padding: EdgeInsets.all(3),
                   child: GestureDetector(
                     onTap: (){
                       controller?.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.easeInOut);
                     },
                     child: AnimatedContainer(
                       duration: Duration(microseconds: 300),
                       margin: EdgeInsets.symmetric(horizontal: 5),
                       width: currentPage == index ? 12 : 8,
                       height: currentPage == index? 12 : 8,
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: currentPage == index ? Colors.grey: Colors.grey[500]
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

}