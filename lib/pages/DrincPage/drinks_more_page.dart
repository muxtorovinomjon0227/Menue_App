import 'package:flutter/material.dart';

import 'drinc_page.dart';

class DrinksMorePage extends StatefulWidget {
  @override
  State<DrinksMorePage> createState() => _DrinksMorePageState();
}

class _DrinksMorePageState extends State<DrinksMorePage> {
  bool _isDrinkSelected = false;

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
    var drink;
    return WillPopScope(
      onWillPop: () {
        _isDrinkSelected;
        return Future.value(false);
      },
      child: SafeArea(
        child: _isDrinkSelected
            ? DrinksPage()
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
                                  _isDrinkSelected = true;
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
                  padding: const EdgeInsets.only(left: 50, top: 50),
                  child: Container(
                    width: 320,
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
                                    const Text("Uzbekiston choyxonasi",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 13)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              const Text(
                                "Uzbekistonda ishlab chiqarilagan sof ichimliklar",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                 " Diabet bilan og‘riganlar uchun shakar "
                                     "o‘rinini bosuvchi. Kimyoviy barqaror"
                                     " emas: harorat oshishi bilan metanol va"
                                     " fenilalaninga ajraydi. Metanol (metil spirti)"
                                     " o‘ta xavfli: 5-10 ml ko‘rish qobiliyatini "
                                     "ishdan chiqarib, ko‘rlikka olib keladi. "
                                     "30 ml o‘limga olib keladi. Issiq ichimlikda "
                                     "aspartam kuchli kanserogen formaldegidga aylanadi."
                                     " Aspartamdan zaharlanish ilmiy tasdiqlangan."
                                     " Zaharlanganda sezgi hissi yo‘qoladi, bosh "
                                     "og‘rig‘i va aylanishi, charchash, qusish, "
                                     "yurakning tez urishi, jizzakilik va boshqa "
                                     "holatlar, Parkinson hamda Alsgeymer kasalliklari"
                                     "  kelib chiqishi mumkin."
                 ,                 strutStyle: StrutStyle(height: 1.5)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 220, top: 0),
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assets/drinksImages/coffee.png")),
                  ),
                ),
              ]),
      ),
    );
  }
}
