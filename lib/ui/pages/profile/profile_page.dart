import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return ProfilePageState();
  }
  
}
class  ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile"),
    );
  }
  
}