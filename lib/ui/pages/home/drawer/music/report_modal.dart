import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportModal{
  static void showReportModal(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
      return _ReportModalContent();
        }
    );
  }
}

class _ReportModalContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Container(
       padding: EdgeInsets.all(16),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Reports',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                 GestureDetector(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Icon(Icons.close),
                 )
               ]
           ),
           Divider(
             color: Colors.grey,
             thickness: 2,
           ),

           Text('What going on?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
           Text('well check for all Community Guidelines,so do not worry about making the perfect choice.'),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Sexual content'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Violent or repulsive content'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Impersonation'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Privacy issue'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Hateful or abusive content'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Harassment or bullying'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Harmful or dangerous acts'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Suicide,self-harm or eating disorders'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Child abuse'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Promotes terrorism'),
           ),
           ListTile(
             leading: Icon(Icons.circle_outlined),
             title: Text('Spam or misleading'),
           ),
           SizedBox(height: 70,),
           Container(
             width: double.infinity,
             height: 40,
             decoration: BoxDecoration(
               color: Colors.grey[300],
               borderRadius: BorderRadius.circular(12),

             ),
             child: Text("Next",style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
           )

         ],
       ),
     )


   );
  }

}