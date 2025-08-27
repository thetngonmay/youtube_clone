import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WatchOnPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WatchOnPageState();
  }

}
class WatchOnPageState extends State<WatchOnPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch on TV"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 500,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.zero,
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'No TVs found.Make sure your TV is on and connected to Wi-Fi.',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         ListTile(
           title: Text("No Tvs found"),
           subtitle: Text("Your TV needs to be on the same Wi-Fi network as your phone.You can also link your TV and phone using a TV code."),
         )
        ],
      ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.only(left: 15),
            child: Text("Get Help",style: TextStyle(color: Colors.blue,fontSize: 17),),
          ),
          SizedBox(height: 20,),
          Divider(
            color: Colors.grey[300],
            height: 15,
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Link with TV code"),
                subtitle: Text("Another way of connecting devices.Learn how to get a code from your TV to enter here.") ,
              )
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Enter TV code",style: TextStyle(color: Colors.blue,fontSize: 17),),
          ),
          SizedBox(height: 20,),
          Divider(
            color: Colors.grey[300],
            height: 15,
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Can't find your TV?"),
              )
            ],
          ),
          SizedBox(height: 20,),
          Divider(
            color: Colors.black,
            height: 15,
          ),
        ],
      ),
    );
  }
  
}
