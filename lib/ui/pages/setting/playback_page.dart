import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaybackPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PlaybackPageState();
  }
}
class PlaybackPageState extends State<PlaybackPage>{
  bool _autoPlay=false;
  bool _zoomToFill=false;
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
              value: _autoPlay,
              onChanged: (value)=>
                setState(() => _autoPlay=value),
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
                      value: _zoomToFill,
                      onChanged: (value)=>
                        setState(() => _zoomToFill = value),
                  ),
                  ),
                ]
    ),
        )
    );
  }

}