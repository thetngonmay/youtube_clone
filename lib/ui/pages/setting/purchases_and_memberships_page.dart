import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PurchasesAndMemberships extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PurchasesAndMembershipsPageState();
  }

}
class PurchasesAndMembershipsPageState extends State<PurchasesAndMemberships>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purchases and memberships",style: TextStyle(fontWeight: FontWeight.bold),),
      ),

    );
  }

}