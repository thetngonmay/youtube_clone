import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoQualityPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return VideoQualityPageState();
  }
}
class VideoQualityPageState extends State<VideoQualityPage>{
  String selectedQualityMobile = "auto";
  String selectedQualityWifi = "auto";

  void onMobileOptionChange(String? value){
    setState(() {
      selectedQualityMobile = value!;
    });
  }

  void onWifiOptionChange(String? value){
    setState(() {
      selectedQualityWifi = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video quality preferences"),
      ),
      body: SingleChildScrollView(
          child: Column(
              children: [
                ListTile(
                  subtitle: Text("Select your default steaming quality for all video.You can change streaming quality in player options for single videos"),
                ),
                Divider(
                  height: 10,
                  color: Colors.blue,
                  thickness: 2,
                ),
                ListTile(
                  title: Text("VIDEO QUALITY ON MOBILE NETWORKS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                RadioGroup<String>(
                  groupValue: selectedQualityMobile,
                    onChanged: onMobileOptionChange,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Auto()recommended"),
                          subtitle: Text("Adjusts to give you the best experience for your conditions"),
                          trailing: Radio<String>(
                            value: "auto",
                          ),
                          onTap: (){
                            onMobileOptionChange("auto");
                          },
                        ),
                        ListTile(
                          title: Text("Higher picture quality"),
                          subtitle: Text("Uses more data"),
                          trailing: Radio<String>(value: "high"),
                          onTap: (){
                            onMobileOptionChange("high");
                          },
                        ),
                        ListTile(
                          title: Text("Data saver"),
                          subtitle: Text("Lower picture quality"),
                          trailing: Radio<String>(
                            value: "saver",
                          ),
                          onTap: (){
                            onMobileOptionChange("saver");
                          },
                        ),
                      ],
                    )
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 2,
                  height: 10,
                ),
                ListTile(
                  title: Text("VIDEO QUALITY ON WI-FI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                RadioGroup<String>(
                    groupValue: selectedQualityWifi,
                      onChanged: onWifiOptionChange,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Auto()recommended"),
                      subtitle: Text("Adjusts to give you the best experience for your conditions"),
                      trailing: Radio<String>(
                          value: "auto"
                      ),
                      onTap: (){
                      onWifiOptionChange("auto");
                      },
                    ),
                    ListTile(
                      title: Text("Higher picture quality"),
                      subtitle: Text("Uses more data"),
                      trailing: Radio<String>(
                        value: "higher",
                      ),
                      onTap: (){
                        onWifiOptionChange("higher");
                      },
                    ),
                    ListTile(
                      title: Text("Data saver"),
                      subtitle: Text("Lower picture quality"),
                      trailing: Radio<String>(
                          value: "lower"),
                      onTap: (){
                        onWifiOptionChange("lower");
                      },
                    )
                  ],
                ),
                ),
              ]
          )
      ),
    );
  }

}