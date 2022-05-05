import 'dart:io';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../models/drinks_model.dart';
import 'drinks_more_page.dart';

class DrinksPage extends StatefulWidget {
  DrinksPage({Key? key}) : super(key: key);

  @override
  State<DrinksPage> createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
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
                      'title'.tr(),
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
                    SizedBox(height: 120),
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
                    const SizedBox(height: 1),
                    SizedBox(height: 16),
                    Text(drinks.countName.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Стоимость:',
                          style: TextStyle(
                              color: Color(0xff52616B),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(

                          drinks.cost!,
                          style: TextStyle(
                              color: Color(0xff52616B),
                              fontWeight: FontWeight.w600),
                        ),
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
                              child: Text('Подробнее'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        Column(
          children: [
            Positioned(
              top: -15,
              right:  15,
              child: CircleAvatar(radius: (70),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(50),
                    child: Image.asset(drinks.imageUrl.toString()),
                  )
              ),
            ),
          ],
        ),
      ],
    );
  }
}