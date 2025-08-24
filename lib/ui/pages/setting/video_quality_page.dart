import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/bloc/setting/setting_bloc.dart';

class VideoQualityPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return VideoQualityPageState();
  }
}
class VideoQualityPageState extends State<VideoQualityPage>{

  void onMobileOptionChange(String? value){
    context.read<SettingBloc>().add(ChangeVideoQualityOnMobileEvent(value??""));
  }

  void onWifiOptionChange(String? value){
    context.read<SettingBloc>().add(ChangeVideoQualityOnWifiEvent(value??""));
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
                BlocBuilder<SettingBloc, SettingState>(
                  builder: (context, state){
                   if(state is VideoQualityState){
                     return  RadioGroup<String>(
                         groupValue: state.mobileQualityType,
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
                     );
                   }
                   return SizedBox();
                  },
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 2,
                  height: 10,
                ),

                ListTile(
                  title: Text("VIDEO QUALITY ON WI-FI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                BlocBuilder<SettingBloc, SettingState>(
                  builder: (context, state) {
                    if(state is VideoQualityState){
                      return RadioGroup<String>(
                        groupValue: state.wifiQualityType,
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
                      );
                    }
                    return Container();
                  },
                ),
              ]
          )
      ),
    );
  }

}