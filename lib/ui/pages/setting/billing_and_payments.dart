import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillingAndPaymentsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BillingAndPaymentsPageState();
  }

}
class BillingAndPaymentsPageState extends State<BillingAndPaymentsPage>{
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billing and payments"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Enable quick purchases"),
              subtitle: Text("Make YouTube purchases on all devices without verifying your account."),
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
        title: Text("On this device, my preferred verification is:"),
        subtitle: Text("Account password"),
      )
          ],
        ),
      ),

    );
  }

}