import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataSavingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DataSavingPageState();
  }

}
class DataSavingPageState extends State<DataSavingPage>{
   bool _dataSaving=false;
   bool _reduceVideo=false;
   bool _reduceSmart=false;
   bool _onlyDownload=false;
   bool _uploadOver=false;
   bool _mutePlayBack=false;
   bool _selectQuality=false;
   bool _mobileData=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Data saving"),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
        ListTile(
        title: Text("Data-saving mode"),
        subtitle: Text("Automatically adjusts setting to save mobile data"),
        trailing: Switch(
          value: _dataSaving,
          onChanged: (value)=>
              setState(() => _dataSaving=value),
        ),
      ),
              ListTile(
                title: Text("Default settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ),
              ListTile(
                title: Text("Reduce video quality"),
                subtitle: Text(""),
                trailing: Switch(
                  value: _reduceVideo,
                  onChanged: (value)=>
                      setState(() => _reduceVideo=value),
                ),
              ),
              ListTile(
                title: Text("Reduce smart downloads quality"),
                subtitle: Text(""),
                trailing: Switch(
                  value: _reduceSmart,
                  onChanged: (value)=>
                      setState(() => _reduceSmart=value),
                ),
              ),
              ListTile(
                title: Text("Only download over Wi-Fi and unrestricted mobile data"),
                subtitle: Text(""),
                trailing: Switch(
                  value: _onlyDownload,
                  onChanged: (value)=>
                      setState(() => _onlyDownload=value),
                ),
              ),
              ListTile(
                title: Text("Upload over Wi-Fi only"),
                subtitle: Text(""),
                trailing: Switch(
                  value: _uploadOver,
                  onChanged: (value)=>
                      setState(() => _uploadOver=value),
                ),
              ),
              ListTile(
                title: Text("Muted playback in feeds over Wi-Fi only"),
                subtitle: Text(""),
                trailing: Switch(
                  value: _mutePlayBack,
                  onChanged: (value)=>
                      setState(() => _mutePlayBack=value),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 4,
                height: 10,
              ),
              ListTile(
                title: Text("Data monitoring and control",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ),
              ListTile(
                title: Text("Select quality for every video"),
                subtitle: Text(""),
                trailing: Switch(
                  value: _selectQuality,
                  onChanged: (value)=>
                      setState(() => _selectQuality=value),
                ),
              ),
              ListTile(
                title: Text("Mobile data usage reminder"),
                subtitle: Text(""),
                trailing: Switch(
                  value: _mobileData,
                  onChanged: (value)=>
                      setState(() => _mobileData=value),
                ),
              ),

        ],
    ),
      ),
    );
  }

  }

