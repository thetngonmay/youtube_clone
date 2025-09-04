import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/profile/download_page.dart';

import '../../../../../../../model/music_drawer_model.dart';

class CustomListView extends StatelessWidget {
  final List<MusicDrawerModel> list;

  const CustomListView({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return _buildMusicItem(item);
      },
    );
  }
  Widget _buildMusicItem(MusicDrawerModel item) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  item.imageUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "3:25",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  item.description,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 3),
                Text(
                  '${item.views} • ${item.duration}',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed:()=>onMoreClick,
            icon: Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
    );
  }

  void onMoreClick(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          height: 400,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.add_chart_outlined),
                title: Text("Play next in queue"),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://img.freepik.com/free-vector/gradient-p-logo-template_23-2149372725.jpg?semt=ais_hybrid&w=740&q=80",
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.watch_later_outlined),
                title: Text("Save to Watch Later"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.save),
                title: Text("Save to playlist"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.download),
                title: Text("Download video"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.shortcut_outlined),
                title: Text("Share"),
              ),
            ],
          ),
        );
      },
    );
  }
}
