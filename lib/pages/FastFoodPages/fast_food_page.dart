import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

      class FastFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Container(
        color: Colors.orange,
        child: Center(
            child: Text('Location Page',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0))),
      );
  }
}
