import 'package:flutter/material.dart';

class UserInfo  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text("Thet Ngon", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
         Text("12 December 2000", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors. blue),),
         Text("Yangon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400), ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text("091232342"),
             SizedBox(width: 10,),
             Text("092525252"),
           ],
         ),
         Image(image: AssetImage("images/icecream.jpg"))
       ],
     ),
   );
  }

}