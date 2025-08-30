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
        'https://www.famousbirthdays.com/faces/prinz-image.jpg',
        'Prinz'
    ),
    StoriesModel(
        'https://images.squarespace-cdn.com/content/v1/520ed800e4b0229123208764/1656293045194-N7H4CI672IUEJBT98Z9I/nelly_hero.jpeg',
        'Nelly'
    ),
    StoriesModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2pmp3GZsgGoqcxeVLLmRDy0sHpQU_w9cV7w&s',
        'BolBBalgan4'
    ),
    StoriesModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUpKnUnGuFb0kmg9jtm154pifmu0jg18VomA&s',
        'BLACKPINK '
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
