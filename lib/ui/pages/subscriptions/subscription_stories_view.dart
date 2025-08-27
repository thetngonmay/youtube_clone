import 'package:flutter/material.dart';

class SubscriptionStoriesView extends StatelessWidget {
  final List<String> users = List.generate(6, (index) => "User $index");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://i.guim.co.uk/img/media/67944850a1b5ebd6a0fba9e3528d448ebe360c60/359_0_2469_1482/master/2469.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=03f3e07a7f367f36a738f1ad8132b3bb",
                  ),
                ),
                SizedBox(height: 5),
                Text("Song Title"),
              ],
            ),
          );
        },
      ),
    );
  }
}
