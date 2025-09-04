import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareModal{
  static void showShareModal(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (BuildContext conext){
      return _ShareModalContent();

        },
    );
  }
}

class _ShareModalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Wrap(
        children: [
          ListTile(
            title: Text('Share',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.copy),
            title: Text('Copy link'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.quick_contacts_dialer_outlined),
            title: Text('Quick Share'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('QR code'),
          )
        ],
      ),
    );
  }
}