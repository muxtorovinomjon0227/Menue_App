import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/cheeps.png",
                      height: 100, width: 100),
                ),
              ],
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          //   child: Container(
          //     width: 50,
          //     height: 50,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(25),
          //       image: const DecorationImage(
          //         colorFilter:
          //             ColorFilter.mode(Colors.white, BlendMode.modulate),
          //         image: AssetImage("assets/icons/ic_back.png"),
          //       ),
          //     ),
          //   ),
          // )
        ],
    );
  }
}
