import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaybackPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PlaybackPageState();
  }
}
class PlaybackPageState extends State<PlaybackPage>{
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playback"),
      ),
        body: SingleChildScrollView(
          child: Column(
              children: [
          ListTile(
          title: Text("Auto-play next video"),
          subtitle: Text("When auto-play is enabled,a suggessted video will automatically play next"),
          trailing: Switch(
              value: isSwitched,
              onChanged: (newValue) {
                setState(() {
                  isSwitched = newValue;
                });
              }
          ),
        ),
                ListTile(
                  title: Text("Double-tap to seek"),
                  subtitle: Text("10 seconds"),
                ),
                ListTile(
                  title: Text("Zoom to fill screen"),
                  subtitle: Text("Always zoom so that video fill the screen in full screen"),
                  trailing: Switch(
                      value: isSwitched,
                      onChanged: (newValue) {
                        setState(() {
                          isSwitched = newValue;
                        });
                      }
                  ),
                ),
      ],
      )
    ),
    );
  }

}