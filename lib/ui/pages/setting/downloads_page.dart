import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DownloadsPageState();
  }

}
class DownloadsPageState extends State<DownloadsPage>{
  bool _downloadOver=false;
  bool _recommend=false;
  bool _downloadHelp=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Downloads"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Download",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
      ListTile(
        title: Text("Download quality"),
        subtitle: Text("Ask each time"),
      ),
            ListTile(
              title: Text("Download over Wi-Fi only"),
              subtitle: Text(""),
              trailing: Switch(
                value: _downloadOver,
                onChanged: (value)=>
                    setState(() => _downloadOver=value),
              ),
            ),
            ListTile(
              title: Text("Recommend downloads"),
              subtitle: Text(""),
              trailing: Switch(
                value: _recommend,
                onChanged: (value)=>
                    setState(() => _recommend=value),
              ),
            ),
            ListTile(
              title: Text("Download help"),
              subtitle: Text("Find answers to your questions about downdoading videos"),
              trailing: Switch(
                value: _downloadHelp,
                onChanged: (value)=>
                    setState(() => _downloadHelp=value),
              ),
            ),
            ListTile(
              title: Text("Delete all downloads"),
              subtitle: Text(""),
            ),
            Divider(
              height: 10,
              color: Colors.blue,
              thickness: 1,
            ),
            ListTile(
              title: Text("Available storage")
            ),
            Divider(
              height: 10,
              color: Colors.blue,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

}