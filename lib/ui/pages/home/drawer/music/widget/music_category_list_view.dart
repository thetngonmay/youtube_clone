import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/music_category_data.dart';
import 'package:youtube_clone/ui/pages/home/drawer/music/widget/click_view/music_category_click_view.dart';

class MusicCategoryListView extends StatefulWidget{
  final String categoryName;
  final List<MusicCategoryData> dataList;
  const MusicCategoryListView({super.key, required this.categoryName, required this.dataList});
  @override
  State<StatefulWidget> createState() => MusicCategoryListViewState();
}

class MusicCategoryListViewState extends State<MusicCategoryListView>{
  var showMore = false;
  void onMoreClick(){
    setState(() {
      showMore = !showMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    var summerDataListToBind = showMore? widget.dataList: widget.dataList.sublist(0,3);
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(widget.categoryName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          ...summerDataListToBind.map((summerData){
            return GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MusicCategoryClickView()));
              },

              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: CachedNetworkImage(
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                        imageUrl: summerData.imageUrl,
                        progressIndicatorBuilder: (context, url, progress) =>
                            Center(
                              child: CircularProgressIndicator(
                                value: progress.progress,
                              ),
                            ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(summerData.title, style: TextStyle(fontSize: 20)),
                          Text(summerData.description),
                          Text("${summerData.numberOfTrack} tracks")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: onMoreClick,
                  icon: CircleAvatar(
                  child: Icon(showMore?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down_outlined,)
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}