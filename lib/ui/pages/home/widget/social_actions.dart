import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onLikeClick,
                    icon: Icon(Icons.thumb_up_alt_outlined),),
                  Text("2.5k"),
                  IconButton(onPressed: onDislikeClick,
                    icon: Icon(Icons.thumb_down_alt_outlined),),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 1,
                      offset: Offset(1, 1)
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onShareClick,
                    icon: Icon(Icons.share_outlined),),
                  Text("Share")
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onRemixClick,
                    icon: Icon(Icons.playlist_add_outlined),),
                  Text("Remix")
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onDownloadClick,
                    icon: Icon(Icons.arrow_downward_outlined),),
                  Text("Download")
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onClipClick,
                    icon: Icon(Icons.cut_outlined),),
                  Text("Clip")
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onSaveClick,
                    icon: Icon(Icons.save_alt_outlined),),
                  Text("Save")
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    offset: Offset(1, 1)
                ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: onReportClick,
                    icon: Icon(Icons.flag_outlined),),
                  Text("Report")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onLikeClick() {
  }

  void onDislikeClick() {
  }

  void onShareClick() {
  }

  void onRemixClick() {
  }

  void onDownloadClick() {
  }

  void onClipClick() {
  }

  void onSaveClick() {
  }

  void onReportClick() {
  }
}