import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationSettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NotificationSettingPageState();
  }

}
class NotificationSettingPageState extends State<NotificationSettingPage>{
  bool _scheduledDigest=false;
  bool _subscriptions=false;
  bool _recommendedVideo=false;
  bool _recommendedWay=false;
  bool _activityOnMyChannel=false;
  bool _activityOnMyComments=false;
  bool _mentions=false;
  bool _otherReusing=false;
  bool _product=false;
  bool _promotional=false;
  bool _watch=false;
  bool _disable=false;
  bool _newBadges=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title: Text("Notifications"),
        bottom: PreferredSize(preferredSize: Size.fromHeight(20),
            child: Padding(
                padding: EdgeInsets.only(bottom: 3,left: 18),
            child: Align(alignment: Alignment.centerLeft,
              child: Text("Mobile notifications",style: TextStyle(fontWeight: FontWeight.bold),)),),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("Scheduled Digest"),
              subtitle: Text("GEt akk your notification as a daily digest at 7:00pm.Tap to customise delivery time"),
              trailing: Switch(
                value: _scheduledDigest,
                onChanged: (value)=>
                    setState(() => _scheduledDigest=value),
              ),
            ),
            ListTile(
              title: Text("Subscriptions"),
              subtitle: Text("Notify me about activity from the channels that I'm subscribed to"),
              trailing: Switch(
                value: _subscriptions,
                onChanged: (value)=>
                    setState(() => _subscriptions=value),
              ),
            ),
            ListTile(
              title: Text("Channel settings"),
              subtitle: Text("Tap here to manage notification settings for each subscribed channel"),
            ),
            ListTile(
              title: Text("Recommended videos"),
              subtitle: Text("Notify me of videos that I might like based on what I watch"),
              trailing: Switch(
                value: _recommendedVideo,
                onChanged: (value)=>
                    setState(() => _recommendedVideo=value),
              ),
            ),
            ListTile(
              title: Text("Recommended ways to create"),
              subtitle: Text("Notify me with recommended trends and ways to create"),
              trailing: Switch(
                value: _recommendedWay,
                onChanged: (value)=>
                    setState(() => _recommendedWay=value),
                  ),
            ),
            ListTile(
              title: Text("Activity on my channel"),
              subtitle: Text("Notify me about comments and other activity on my channel or videos"),
              trailing: Switch(
                value: _activityOnMyChannel,
                onChanged: (value)=>
                    setState(() => _activityOnMyChannel=value),
              ),
            ),
            ListTile(
              title: Text("Activity on my comments"),
              subtitle: Text("Notify me about replies, likes and other activity on my comments, and activity on my posts on other channels"),
              trailing: Switch(
                value: _activityOnMyComments,
                onChanged: (value)=>
                    setState(() => _activityOnMyComments=value),
              ),
            ),
            ListTile(
              title: Text("Mentions"),
              subtitle: Text("Notify me when others mention my channel"),
              trailing: Switch(
                value: _mentions,
                onChanged: (value)=>
                    setState(() => _mentions=value),
              ),
            ),
            ListTile(
              title: Text("Others reusing my content"),
              subtitle: Text("Notify me when others share,remix or respond to my content on their channels"),
              trailing: Switch(
                value: _otherReusing,
                onChanged: (value)=>
                    setState(() => _otherReusing=value),
              ),
            ),
            ListTile(
              title: Text("Product updates"),
              subtitle: Text("Notify me if new product updates and announcements"),
              trailing: Switch(
                value: _product,
                onChanged: (value)=>
                    setState(() => _product=value),
              ),
            ),
            ListTile(
              title: Text("Promotional content and offerings"),
              subtitle: Text("Notify me of promotional content and offerings,like members-only perks"),
              trailing: Switch(
                value: _promotional,
                onChanged: (value)=>
                    setState(() => _promotional=value),
              ),
            ),
            ListTile(
              title: Text("Watch on TV"),
              subtitle: Text("Suggest videos that I mught like to watch on TV."),
              trailing: Switch(
                value: _watch,
                onChanged: (value)=>
                    setState(() => _watch=value),
              ),
            ),
            ListTile(
              title: Text("Disable sounds and vibrations"),
              subtitle: Text("Silence notifications during the hours you specify.Tap to customise time."),
              trailing: Switch(
                value: _disable,
                onChanged: (value)=>
                    setState(() => _disable=value),
              ),
            ),
            ListTile(
              title: Text("New badges"),
              subtitle: Text("Notify me when I receive a new badge"),
              trailing: Switch(
                value: _newBadges,
                onChanged: (value)=>
                    setState(() => _newBadges=value),
                  ),
            )
          ],
        ),
      ),
      );

  }

}