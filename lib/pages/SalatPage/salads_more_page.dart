  import 'package:flutter/material.dart';
  import 'package:menue_app/models/salads_model.dart';

  import '../../models/food_models.dart';


  class SaladsMorePage extends StatelessWidget {
    final int selectedItemIndex;
    int count = 0;
    SaladsMorePage(this.selectedItemIndex, {Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(top: 80, right: 40,left: 55),
        color: Color(Salad.salads[selectedItemIndex].bannerColor!.toInt()),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            details(Salad.salads[selectedItemIndex]),

            Positioned(
              top: -50,
              right: -10,
              child: CircleAvatar(radius: (100),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(100),
                    child: Image.asset(
                      Salad.salads[selectedItemIndex].imageUrl!,
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
            details(Salad.salads[selectedItemIndex]),
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

    Widget details(Salad salads) {
      return Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 140),
            Text(
              salads.name!,
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
                      salads.time.toString(),
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
                      salads.ingredient.toString(),
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
                Salad.salads[0].fastFoodMore!,
                style: const TextStyle(fontSize: 16, height: 1.4),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      );
    }
  }