import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(child: MyApp(),
    supportedLocales: [
      Locale('en', "US"),
      Locale('ru', 'RU'),
      Locale('uz', 'UZ'),
    ], path: 'assets/translation',
  ));
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Manrope"),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: _title,
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}

