import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
          child: Text('Notification Page',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0))),
    );
  }
}
