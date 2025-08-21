import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccessbilityPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AccessbilityPageState();
     }
}
class AccessbilityPageState extends State<AccessbilityPage>{
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accessbility"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Accessibility player"),
              subtitle: Text("Display accessibility conteols in the player"),
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
        title: Text("Hide player control"),
        subtitle: Text("Never"),
      )
          ],
        ),
      ),

    );
  }

}