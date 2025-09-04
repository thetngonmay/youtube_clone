import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/model/live_list_model.dart';
import 'package:youtube_clone/ui/pages/home/drawer/live/live_now.dart';

class LiveListView extends StatefulWidget{
  final String listName;
  final List<LiveListModel> data;

  const LiveListView({super.key, required this.listName, required this.data});


  @override
  State<StatefulWidget> createState() => LiveListViewState();
}

class LiveListViewState extends State<LiveListView>{
  var showMore = false;
  void onMoreClick(){
    setState(() {
      showMore = !showMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    var yiboDataListToBind = showMore? widget.data: widget.data.sublist(0,3);
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.listName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),

                  ),
                  onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>LiveNow(data: widget.data)));
                  },
                  child: Text("view all"),
                ),
              ],
            ),
           
          ),
          ...yiboDataListToBind.map((yiboData){
            return GestureDetector(
              onTap: (){
                Navigator.pop(context);
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
                        imageUrl: yiboData.imgUrl,
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
                          Text(yiboData.title, style: TextStyle(fontSize: 20)),
                          Text(yiboData.description),
                          Text("${yiboData.watching} watching")
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: onMoreClick, icon: Icon(Icons.more_vert_outlined))
                      ],
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

