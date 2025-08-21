import 'package:flutter/material.dart';

class GeneralSettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GeneralSettingPageState();
  }
}
class GeneralSettingPageState extends State<GeneralSettingPage>{
  bool isSwitched = false;

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
              title: Text("Remind me when it's bedtime"),
              subtitle: Text("off"),
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
              title: Text("Appearance"),
              subtitle: Text("Choose your light or dark theme preference"),
            ),
            ListTile(
              title: Text("App language"),
              subtitle: Text("English (United Kingdom)"),
            ),
            ListTile(
              title: Text("Playback in feeds"),
              subtitle: Text("Choose whether videos play as you browse"),
            ),
            ListTile(
              title: Text("Voice search language"),
              subtitle: Text("Default"),
            ),
            ListTile(
              title: Text("Location"),
              subtitle: Text("United Kingdom"),
            ),
            ListTile(
              title: Text("Restricted Mode"),
              subtitle: Text("This helps to hide potentially mature videos.No filter is 100% accurate.This setting only applies to this app on this device"),
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
              title: Text("Enable stats for nerds"),
              subtitle: Text(""),
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
              title: Text("Earn badges"),
              subtitle: Text("Receive badges across all YouTube apps"),
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
        ),
      ),
    );
  }
}