import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/pages/setting/setting_page.dart';

class ConnectedAppsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConnectedAppsPageState();
  }
}

class ConnectedAppsPageState extends State<ConnectedAppsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connected apps"),
        actions: [
          IconButton(onPressed: onCastClick, icon: Icon(Icons.cast)),
          IconButton(onPressed: onSearchClick, icon: Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (String result) {
              if (result == 'setting') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingPage()),
                );
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'setting',
                child: Text("Setting"),
              ),
              const PopupMenuItem<String>(
                value: 'tv',
                child: Text("Watch on TV"),
              ),
              const PopupMenuItem<String>(
                value: 'term',
                child: Text("Terms and privacy policy"),
              ),
              const PopupMenuItem<String>(
                value: 'help',
                child: Text("Help and feedback"),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3gKXzKX_IS-sUjfQ9W_q5_fRjWwLa1AR3ew&s",
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Activision ID",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(width: 120, height: 70),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                        onPressed: onConnectClick,
                        child: Text("Connect"),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMxNn6hYSX-wLxvCQdCWjc5ivqsQww6xN5fw&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Battle.net",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 150, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJQRwJyuRhho8xArHzwQ1jxbdPQErggEnUnA&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Electronic Arts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 100, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnms1EiQOw_sk-_Kz4ah4YLj9YGawiHDnNPw&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Epic Games",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 130, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSww3WSSfP9EB0Ou0w1eR3jQ8TQA48ZGFQoPQ&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Garena",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 170, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5LSnhtDr-aox_r8BPu43EqgyMImt7y5Dd_Q&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Krafton",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 170, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.namu.wiki/i/gaBPyUmLoM_aZffMgKATu1C3oZVzDNIPk_gXMwEg5keaVqIOWdNrWk7fopWQxgqPeRQ-rTQhxGwrHYI0J3jwnQ.webp",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "MLBB",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 180, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://c8.alamy.com/comp/2T6TG5X/nba-national-basketball-association-logo-usa-professional-basketball-league-system-vector-illustration-abstract-image-2T6TG5X.jpg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "NBA ID",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 170, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://1000logos.net/wp-content/uploads/2017/05/NFL-logo.jpg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "NFL ID",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 170, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZZtuRQS9pOi1BungEI0Jar-1xjQw3F_4_cA&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "PUBG MOBILE",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 100, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKnJaJcVfuAJc2YxBhBp4ujW956ygaVD0vaA&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Riot Games",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 130, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaJW97LZe0WsP-67gVrOc1csV3agzv4D3S0A&s",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Ubisoft account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 90, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://s.yimg.com/cv/apiv2/fantasy/share/fantasy-landscape.jpg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Yahoo Fantasy",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(width: 100, height: 70),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    onPressed: onConnectClick,
                    child: Text("Connect"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onCastClick() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          height: 200,
          child: Column(
            children: [
              ListTile(title: Text("Select a device")),
              ListTile(
                leading: IconButton(
                  onPressed: onLinkClick,
                  icon: Icon(Icons.phonelink),
                ),
                title: Text("Link with TV code"),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: onLearnClick,
                  icon: Icon(Icons.info_outline),
                ),
                title: Text("Learn more"),
              ),
            ],
          ),
        );
      },
    );
  }

  void onSearchClick() {}

  void onMoreClick() {}

  void onConnectClick() {}

  void onLinkClick() {}

  void onLearnClick() {}
}
