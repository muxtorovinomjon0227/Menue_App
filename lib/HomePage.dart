import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:menue_app/models/lang.dart';
import 'package:menue_app/pages/DrincPage/drinc_page.dart';
import 'package:menue_app/pages/FastFoodPages/fast_food_page.dart';
import 'package:menue_app/pages/BlyudaPage/blyuda_page.dart';
import 'package:menue_app/pages/SalatPage/salat_page.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {


  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }



  int _selectedIndex = 0;
  bool showNavigationBar = false;

  var list = [
    BlyudaPage(),
    DrinksPage(),
    FastFoodPage(),
    SaladsPage(),
  ];

  var title = [
    "BlyudaPage",
    'WalkPage',
    'LocationPage',
    'NotificationPage',
  ];


  List <Lang> _langs = [
    Lang("Uz",false),
    Lang("Ru",true),
    Lang("En",false),
  ];

  int _activLangIndex = 1;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                list[_selectedIndex],
                Positioned(
                  top: 0,
                  left: 0,
                  child: Visibility(
                    child: Container(
                      width: 50,
                      height: MediaQuery.of(context).size.height,
                      child: NavigationRail(
                        groupAlignment: 0.0,
                        selectedIndex: _selectedIndex,
                        elevation: 10,
                        backgroundColor: Colors.indigo,
                        selectedLabelTextStyle:
                        const TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),
                        unselectedLabelTextStyle:
                        const TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
                        onDestinationSelected: (int index) {
                          setState(() {
                            _selectedIndex = index;
                            showNavigationBar = !showNavigationBar;
                          });
                        },
                        labelType: NavigationRailLabelType.all,
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: langInit(),
                        ),
                        destinations:  [
                           NavigationRailDestination(
                            icon: SizedBox(),
                            label: RotatedBox(quarterTurns: -1,
                              child: Text("meals".tr()),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: SizedBox(),
                            label: RotatedBox(quarterTurns: -1,
                              child: Text("drinks".tr()),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: SizedBox(),
                            label: RotatedBox(quarterTurns: -1,
                              child: Text("fast_food".tr()),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: SizedBox(),
                            label: RotatedBox(quarterTurns: -1,
                              child: Text("salads".tr()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget langInit(){
    return ToggleButtons(
      color: Colors.transparent,
      borderColor: Colors.transparent,
      selectedColor: Colors.transparent,
      selectedBorderColor: Colors.transparent,
      direction: Axis.vertical,
      children:   <Widget> [
        langButton(_langs[0]),
        langButton(_langs[1]),
        langButton(_langs[2]),
      ],
      onPressed:(int index) {
        setState(() {
          _langs.forEach((e) {e.isActiv = false;
          });
          switch(index){
            case 0 :
              {
                context.setLocale(Locale('uz','UZ'));
              }
              break;
            case 1:
            {context.setLocale(Locale('ru','RU'));
            }
              break;
            case 2:
              {
                context.setLocale(Locale('en','US'));
              }
              break;
          }
          _langs[index].isActiv = true;
        });
      },
      isSelected: _langs.map((e) => e.isActiv).toList(),
    );
  }



  Widget langButton(Lang lang) {
    return Container(
      height: 35,
      width: 35,
      child: Center(
        child: Text(lang.name, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
      decoration: BoxDecoration(
       shape: BoxShape.circle,
        color: lang.isActiv?const Color(0xff206498):Colors.indigo,
      ),
    );
  }
}










