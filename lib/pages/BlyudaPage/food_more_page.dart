import 'package:flutter/material.dart';

import '../../models/food_models.dart';


class FoodMorePage extends StatelessWidget {
  final int selectedItemIndex;
  int count = 0;
  FoodMorePage(this.selectedItemIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.indigo,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/backgroundImage.png'),
        ),
      ),
      child: myBody(),
    );
  }

  Widget myBody() {
    return Container(
      margin: const EdgeInsets.only(top: 80, right: 40,left: 50),
      color: Color(Food.foods[selectedItemIndex].bannerColor!.toInt()),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          details(Food.foods[selectedItemIndex]),
          Positioned(
              top: -72,
              right: -48,
              child: Image.asset(
                Food.foods[selectedItemIndex].imageUrl!,
                height: 220,
              ))
        ],
      ),
    );
  }

  Widget details(Food foods) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 140),
          Text(
            foods.name!,
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
                    'assets/icons/ic_oven.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    foods.time.toString(),
                    style: const TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/ic_fire.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    foods.ingredient.toString(),
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/ic_call.png',
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
          Expanded(
            child: Text(
              Food.foods[0].fastFoodMore!,
              style: const TextStyle(fontSize: 16, height: 1.4),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}