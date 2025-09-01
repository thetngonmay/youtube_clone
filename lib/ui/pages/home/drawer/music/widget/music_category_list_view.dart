import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MusicCategoryListView extends StatefulWidget{
  final String categoryName;
  final List<String> dataList;

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
            return Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                      imageUrl: 'https://static.wikia.nocookie.net/disney/images/8/86/Sabrina_Carpenter.jpg/revision/latest?cb=20191226235526',
                      progressIndicatorBuilder: (context, url, progress) =>
                          Center(
                            child: CircularProgressIndicator(
                              value: progress.progress,
                            ),
                          ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Summer Hits 2025", style: TextStyle(fontSize: 20)),
                      Text("The sound of summer 2025!"),
                      Text(summerData)
                    ],
                  )
                ],
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
              )
            ],
          )
        ],
      ),
    );
  }
}