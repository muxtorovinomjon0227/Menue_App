import 'dart:io';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../models/drinks_model.dart';
import 'drinks_more_page.dart';

class DrinkPage extends StatefulWidget {
  DrinkPage({Key? key}) : super(key: key);

  @override
  State<DrinkPage> createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  bool _isItemSelected = false;
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        //trigger leaving and use own data
        // Navigator.pop(context, false);
        _isItemSelected
            ? setState(() {
          _isItemSelected = false;
        })
            : exit(0);

        //we need to return a future
        return Future.value(false);
      },
      child: SafeArea(
        child: _isItemSelected
            ? DrinksMorePage(_selectedItemIndex)
            : Scaffold(
            body: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'title'. tr(),
                      style: TextStyle(fontSize: 16,color: Colors.blue),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: Drink.drinks.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 350,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 32),
                        itemBuilder: (BuildContext context, int index) {
                          return meal(Drink.drinks[index], context, index);
                        }),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget meal(Drink drinks, context, index) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Card(
          elevation: 48,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(drinks.bannerColor!)),
              height: 360,
              width: 230,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 48),
                    Row(
                      children: [
                        Container(
                          width: 2,
                          height: 25,
                          color: const Color(0xff00195C),
                        ),
                        SizedBox(width: 4),
                        Text(drinks.name.toString()),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 90,
                      child: Text(
                        drinks.name!,
                        maxLines: 3,
                        style: const TextStyle(
                            height: 1.3,
                            fontSize: 24,
                            color: Color(0xff1E2022),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                          'cost'.tr(),
                          style: const TextStyle(
                              color: Color(0xff52616B),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(

                          drinks.cost!,
                          style: const TextStyle(
                              color: Color(0xff52616B),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ],
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/icons/ic_add.png',
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                          side: const BorderSide(
                                              color: Color(0xff175B8F)))),
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Color(0xff175B8F))),
                              onPressed: () {
                                setState(() {
                                  _isItemSelected = true;
                                  _selectedItemIndex = index;
                                });
                              },
                              child: Text("more".tr()),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        Positioned(
          top: -20,
          right: -1,
          child: CircleAvatar(radius: (80),
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(80),
                child: Image.asset(drinks.imageUrl.toString()),
              )
          ),
        ),
      ],
    );
  }
}