import 'dart:io';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:menue_app/models/food_models.dart';
import 'package:menue_app/pages/BlyudaPage/food_more_page.dart';
import 'details_page.dart';

class BlyudaPage extends StatefulWidget {
  @override
  State<BlyudaPage> createState() => _BlyudaPageState();
}

class _BlyudaPageState extends State<BlyudaPage> {
  bool _isMealSelected = false;

  void _show() {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext ctx) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: AlertDialog(
            elevation: 10,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("make".tr(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                DetailsPage(),
              ],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _isMealSelected
            ? setState(() {
                _isMealSelected = false;
              })
            : exit(1);
        return Future.value(false);
      },
      child: SafeArea(
        child: _isMealSelected
            ? FoodMorePage()
            : Scaffold(
                body: Column(children: [
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 9,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisExtent: 360,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return meal(Food.foods[index]);
                      },
                    ),
                  ),
                ]),
              ),
      ),
    ); //Container
  }

  Widget meal(Food food) {
    return Padding(
      padding: EdgeInsets.only(right: 50),
      child: Expanded(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topRight,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 40,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(food.bannerColor!),
                ),
                width: 230,
                height: 320,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 2,
                            color: Colors.black,
                          ),
                          SizedBox(width: 4),
                          Text(food.countName!),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(food.name!,
                          style: const TextStyle(
                              fontSize: 24,
                              color: Color(0xff1E2022),
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'cost'.tr(),
                            style: TextStyle(
                                color: Color(0xff52616B),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(food.cost!,
                              style: const TextStyle(
                                  color: Color(0xff52616B),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icons/ic_oven.png",
                                  height: 20, width: 20),
                              SizedBox(width: 15),
                              Text(
                                food.time!,
                                style: const TextStyle(
                                  color: Color(0xff11263C),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/icons/ic_fire.png",
                                  height: 20, width: 20),
                              SizedBox(width: 15),
                              Text(
                                food.ingredient!,
                                style: const TextStyle(
                                  color: Color(0xff11263C),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              _show();
                            },
                            iconSize: 35,
                            icon: Image.asset("assets/icons/ic_add.png"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isMealSelected = true;
                              });
                            },
                            child: Text("Подробнее"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: -20,
              bottom: 250,
              child: Image.asset(food.imageUrl!, width: 150, height: 140),
            ),
          ],
        ),
      ),
    );
  }
}
