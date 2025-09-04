import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportDialog{
  static void showReportDialog(BuildContext context){
    showDialog(
      context:  context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),

          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Report as inappropriate?'),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Cancel', style: TextStyle(color: Colors.blue),)
                    ),
                    TextButton(onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Report', style: TextStyle(color: Colors.blue),)
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }
    );
  }
}