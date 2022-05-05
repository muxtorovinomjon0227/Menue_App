import 'package:flutter/material.dart';
import 'package:menue_app/models/salads_model.dart';

import '../../models/drinks_model.dart';
import '../../models/food_models.dart';


class DrinksMorePage extends StatelessWidget {
  final int selectedItemIndex;
  int count = 0;
  DrinksMorePage(this.selectedItemIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80, right: 35,left: 50),
      color: Color(Drink.drinks[selectedItemIndex].bannerColor!.toInt()),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          details(Drink.drinks[selectedItemIndex]),

          Positioned(
            top: -50,
            right: -10,
            child: CircleAvatar(radius: (100),
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(100),
                  child: Image.asset(
                    Drink.drinks[selectedItemIndex].imageUrl!,
                    height: 300,
                  ),
                )
            ),
          ),
        ],
      ),
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
                Salad.salads[selectedItemIndex].imageUrl!,
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
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Text(
              Drink.drinks[0].fastFoodMore!,
              style: const TextStyle(fontSize: 16, height: 1.4),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}