import 'dart:io';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../models/salads_model.dart';
import 'salads_more_page.dart';


class SaladsPage extends StatefulWidget {
  @override
  State<SaladsPage> createState() => _SaladsPageState();
}

class _SaladsPageState extends State<SaladsPage> {
  bool _isSaladSelected = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _isSaladSelected
            ? setState(() {
          _isSaladSelected = false;
        })
            : exit(1);
        return Future.value(false);
      },
      child: SafeArea(
        child: _isSaladSelected
            ? SaladsMorePage()
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
                  return salad(Salad.salads[index]);
                },
              ),
            ),
          ]),
        ),
      ),
    ); //Container
  }

  Widget salad(Salad salad) {
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
                  color: Color(salad.bannerColor!),
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
                          Text(salad.countName!),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(salad.name!,
                          style: const TextStyle(
                              fontSize: 24,
                              color: Color(0xff1E2022),
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'cost'.tr(),
                            style: TextStyle(
                                color: Color(0xff52616B),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(salad.cost!,
                              style: const TextStyle(
                                  color: Color(0xff52616B),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icons/ic_oven.png",
                                  height: 20, width: 20),
                              SizedBox(width: 15),
                              Text(
                                salad.time!,
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
                                salad.ingredient!,
                                style: const TextStyle(
                                  color: Color(0xff11263C),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                            },
                            iconSize: 35,
                            icon: Image.asset("assets/icons/ic_add.png"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isSaladSelected = true;
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
              child:CircleAvatar(
                radius: 65,
                backgroundColor: Color(0xffFDCF09),
                child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(salad.imageUrl!)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
