import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_loji/screen/SplashScreen.dart';
import 'constant/AppColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: AppColors.PrimaryColor,
        primaryColorDark: AppColors.PrimaryDarkColor,
        primaryColorLight: AppColors.PrimaryLightColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
