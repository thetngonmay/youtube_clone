import 'package:flutter/material.dart';
import 'package:youtube_clone/model/stories_model.dart';

class SubscriptionStoriesView extends StatelessWidget {
  List<StoriesModel> storiesDataList=[
    StoriesModel(
        'https://publish.purewow.net/wp-content/uploads/sites/2/2024/10/taylor-swift-hub.jpg?resize=720%2C780',
        'Taylor Swift'
    ),
    StoriesModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6sDdZ6oItg8kPZsiSHS7NEuVTRCqrRkm6RA&s',
        'Billie Eilish'
    ),
    StoriesModel(
        'https://hips.hearstapps.com/hmg-prod/images/billie-1602750937.jpg?crop=0.6669921875xw:1xh;center,top&resize=640:*',
        'Billie Eilish'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storiesDataList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(storiesDataList[index].channelProfileUrl),
                ),
                SizedBox(height: 5),
                Text(storiesDataList[index].channelName),
              ],
            ),
          );
        },
      ),
    );
  }
}
