import 'package:flutter/material.dart';

class GeneralSettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GeneralSettingPageState();
  }

}

class GeneralSettingPageState extends State<GeneralSettingPage>{
  var remindState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("General"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Remind me take a break"),
              subtitle: Text("Off"),
              trailing: Switch(value: remindState, onChanged: (changedValue){
                setState(() {
                  remindState = changedValue;
                });
              }),
            )
          ],
        ),
      ),
    );
  }

}