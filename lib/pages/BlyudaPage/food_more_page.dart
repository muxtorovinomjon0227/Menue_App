import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blyuda_page.dart';

class FoodMorePage extends StatefulWidget {
  FoodMorePage({Key? key}) : super(key: key);

  @override
  State<FoodMorePage> createState() => _FoodMorePageState();
}

class _FoodMorePageState extends State<FoodMorePage> {
  bool _isMealSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/backgroundImage.png"),
        ),
      ),
      child: buildMore(
        context,
      ),
    );
  }

  Widget buildMore(context) {
    return WillPopScope(
      onWillPop: () {
        _isMealSelected;
        return Future.value(false);
      },
      child: SafeArea(
        child: _isMealSelected
            ? BlyudaPage()
            : Stack(children: [
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100, right: 50),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isMealSelected = true;
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 24,
                                color: Colors.black,
                              ),
                            )),
                        SizedBox(width: 15),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white),
                            child: IconButton(
                              icon: Image.asset("assets/icons/ic_exit.png",
                                  color: Colors.black, height: 20, width: 20),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 50),
                  child: Container(
                    width: 290,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xffF2DFE1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 120),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 2,
                                      height: 15,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 5),
                                    const Text("Китайская кухня",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 13)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              const Text(
                                "Кавказский шашлык из бараньих ребрышек",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Image.asset("assets/icons/ic_oven.png",height: 20),
                                    SizedBox(width: 10),
                                    Text("20 мин"),
                                  ],),
                                  Row(children: [
                                    Image.asset("assets/icons/ic_fire.png",height: 20),
                                    SizedBox(width: 10),
                                    Text("5 инг"),
                                  ],),
                                  Row(children: [
                                    Image.asset("assets/icons/ic_call.png",height: 20),
                                    SizedBox(width: 10),
                                    Text("438 кал"),
                                  ],),
                                ],
                              ),   
                              const SizedBox(height: 20),
                              const Text("Что бы мне не говорили, а самый "
                                  "вкусный шашлык получается из баранины. "
                                  "Есть правда один"
                                  " минус. На базаре невозможно"
                                  " купить нормальную баранину,"
                                  " все скупают на корню шашлычники"
                                  "   Не беда, если руки"
                                  " растут из нужного места, шашлык"
                                  " можно приготовить "
                                  "из того что оставили нам эти коршуны. "
                                  "Будем готовить бараньи ребрышки. "
                                  "Не те кусочки, где больше всего мяса, "
                                  "а те кусочки, которые остались после "
                                  "налета саранчи",strutStyle: StrutStyle(height: 1.5)),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF1F1F1),
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          "assets/images/im_lagmon.png"
                                        ),
                                      )
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF1F1F1),
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/im_lagmon.png"
                                          ),
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF1F1F1),
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/im_lagmon.png"
                                          ),
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF1F1F1),
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/im_lagmon.png"
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xffF1F1F1),
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/im_lagmon.png"
                                      ),
                                    )
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150, top: 0),
                  child: Image.asset("assets/images/cheeps.png",
                      width: 250, height: 250),
                ),
              ]),
      ),
    );
  }
}
