import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataSavingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DataSavingPageState();
  }

}
class DataSavingPageState extends State<DataSavingPage>{
   bool toggleable=false;
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
            value: toggleable,
            onChanged:(newValue){
              setState(() {
                toggleable= newValue;
              });
            }
        ),
      ),
              ListTile(
                title: Text("Default settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ),
              ListTile(
                title: Text("Reduce video quality"),
                subtitle: Text(""),
                trailing: Switch(
                    value: toggleable,
                    onChanged:(newValue){
                      setState(() {
                        toggleable= newValue;
                      });
                    }
                ),
              ),
              ListTile(
                title: Text("Reduce smart downloads quality"),
                subtitle: Text(""),
                trailing: Switch(
                    value: toggleable,
                    onChanged:(newValue){
                      setState(() {
                        toggleable= newValue;
                      });
                    }
                ),
              ),
              ListTile(
                title: Text("Only sownload over Wi-Fi and unrestricted mobile data"),
                subtitle: Text(""),
                trailing: Switch(
                    value: toggleable,
                    onChanged:(newValue){
                      setState(() {
                        toggleable= newValue;
                      });
                    }
                ),
              ),
              ListTile(
                title: Text("Upload wver Wi-Fi only"),
                subtitle: Text(""),
                trailing: Switch(
                    value: toggleable,
                    onChanged:(newValue){
                      setState(() {
                        toggleable= newValue;
                      });
                    }
                ),
              ),
              ListTile(
                title: Text("Muted playback in feeds over Wi-Fi only"),
                subtitle: Text(""),
                trailing: Switch(
                    value: toggleable,
                    onChanged:(newValue){
                      setState(() {
                        toggleable= newValue;
                      });
                    }
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
                    value: toggleable,
                    onChanged:(newValue){
                      setState(() {
                        toggleable= newValue;
                      });
                    }
                ),
              ),
              ListTile(
                title: Text("Mobile data usage reminder"),
                subtitle: Text(""),
                trailing: Switch(
                    value: toggleable,
                    onChanged:(newValue){
                      setState(() {
                        toggleable= newValue;
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

