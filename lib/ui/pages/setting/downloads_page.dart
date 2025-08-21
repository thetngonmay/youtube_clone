import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DownloadsPageState();
  }

}
class DownloadsPageState extends State<DownloadsPage>{
  bool isSwitched=false;
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
                  value: isSwitched,
                  onChanged:(newValue){
                    setState(() {
                      isSwitched= newValue;
                    });
                  }
              ),
            ),
            ListTile(
              title: Text("Recommend downloads"),
              subtitle: Text(""),
              trailing: Switch(
                  value: isSwitched,
                  onChanged:(newValue){
                    setState(() {
                      isSwitched= newValue;
                    });
                  }
              ),
            ),
            ListTile(
              title: Text("Download help"),
              subtitle: Text("Find answers to your questions about downdoading videos"),
              trailing: Switch(
                  value: isSwitched,
                  onChanged:(newValue){
                    setState(() {
                      isSwitched= newValue;
                    });
                  }
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