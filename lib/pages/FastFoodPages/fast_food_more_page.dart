import 'package:flutter/material.dart';
import 'package:menue_app/models/fast_food_model.dart';


class FastFoodMorePage extends StatelessWidget {
  final int selectedItemIndex;
  int count = 0;
  FastFoodMorePage(this.selectedItemIndex, {Key? key}) : super(key: key);

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
      color: Color(FastFood.fastFoods[selectedItemIndex].bannerColor!.toInt()),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          details(FastFood.fastFoods[selectedItemIndex]),

          Positioned(
            top: -50,
            right: -10,
            child: CircleAvatar(radius: (100),
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(100),
                  child: Image.asset(
                    FastFood.fastFoods[selectedItemIndex].imageUrl!,
                    height: 300,
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }

  Widget details(FastFood fastFood) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 140),
          Text(
            fastFood.name!,
            style: const TextStyle(
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
                    fastFood.time.toString(),
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
                    fastFood.ingredient.toString(),
                    style: const TextStyle(
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
                  const Text(
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
              FastFood.fastFoods[0].fastFoodMore!,
              style: const TextStyle(fontSize: 16, height: 1.4),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}