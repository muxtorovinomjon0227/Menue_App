import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrincPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: Text('Walk Page',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0))),
    );
  }
}
