import 'package:flutter/material.dart';

import '../../models/drinks_model.dart';
import '../../models/food_models.dart';


class DrinksMorePage extends StatelessWidget {
  final int selectedItemIndex;
  int count = 0;
  DrinksMorePage(this.selectedItemIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/icons/ic_add.png'),
        ),
      ),
      child: myBody(),
    );
  }

  Widget myBody() {
    return Container(
      margin: const EdgeInsets.only(top: 80, right: 30),
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          details(Drink.drinks[selectedItemIndex]),
          Positioned(
              top: -72,
              right: -48,
              child: Image.asset(
                Drink.drinks[selectedItemIndex].imageUrl!,
                height: 220,
              ))
        ],
      ),
    );
  }

  Widget details(Drink drinks) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 140),
          Text(
            drinks.name!,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/ic_add.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '20 мин',
                    style: const TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/ic_add.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '5 инг',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/ic_add.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '438 кал',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            Drink.drinks[0].name!,
            style: const TextStyle(fontSize: 16, height: 1.4),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}