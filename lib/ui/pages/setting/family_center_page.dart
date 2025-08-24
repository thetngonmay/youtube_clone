import 'package:flutter/material.dart';

class FamilyCenterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FamilyCenterPageState();
  }
}

class FamilyCenterPageState extends State<FamilyCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Family Center",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Tools to help you support your children and teens as they explore and grow on YoutTube.Learn ",
                  ),
                ),
                Row(
                  children: [
                    IconButton(onPressed: onPluseClick, icon: Icon(Icons.add)),
                    Text("Add a YouTube Kids profile"),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: onPluseClick, icon: Icon(Icons.add)),
                    Text("Invite a teen"),
                  ],
                ),
                Divider(color: Colors.grey, thickness: 1, height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: onNotificationClick,
                      icon: Icon(Icons.notifications_none),
                    ),
                    Text("Notification"),
                    Container(
                      padding: EdgeInsets.only(left: 200,right: 10),
                    ),
                    IconButton(onPressed: onNextClick, icon: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a parents?"),
                SizedBox(
                  height: 10,
                ),
                Text("Invite your parent to turn on supervision feature",style: TextStyle(color: Colors.blue),)
              ],
            ),
          )
        ],
      ),
    );
  }

  void onNotificationClick() {}

  void onPluseClick() {}

  void onNextClick() {
  }
}
