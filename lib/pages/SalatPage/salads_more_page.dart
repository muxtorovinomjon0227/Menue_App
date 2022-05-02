import 'package:flutter/material.dart';
import 'package:menue_app/pages/SalatPage/salat_page.dart';

class SaladsMorePage extends StatefulWidget {
  @override
  State<SaladsMorePage> createState() => _SaladsMorePageState();
}

class _SaladsMorePageState extends State<SaladsMorePage> {
  bool _isSaladSelected = false;

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
        _isSaladSelected;
        return Future.value(false);
      },
      child: SafeArea(
        child: _isSaladSelected
            ? SaladsPage()
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
                            _isSaladSelected = true;
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
                          "Mevali salad",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                            "Qizil karamning yaxshi tomoni shundaki,"
                                " u deyarli har qanday salatga yorqin "
                                "ranglar qo’shishi mumkin. Ushbu salat"
                                " sizning stolingizning haqiqiy bezakiga aylanadi"
                          "  Va bu shuningdek mazali tushlik yoki kechki "
                                "ovqat uchun ajoyib qo’shimcha bo’ladi va "
                                "butun oilani xursand qiladi.",
                            strutStyle: StrutStyle(height: 1.5)),
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
                  backgroundImage: AssetImage("assets/saladsImages/salad_2.png")),
            ),
          ),
        ]),
      ),
    );
  }
}
