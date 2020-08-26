import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:money_loji/components/mGooglLoginButton.dart';
import 'package:money_loji/components/mMobileLoginButton.dart';
import 'package:money_loji/components/mTermsConditions.dart';
import 'package:money_loji/constant/AppColors.dart';
import 'package:money_loji/constant/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  var quotesPosition = 0;

  List<String> quotes = [
    'Quick and Easy',
    'Best Offers',
    'Safe and Secure',
  ];

  var width = 70.0; //  Animated Container width at starting time

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 2.0, end: 0.0).animate(controller);
    animation.addListener(() => setState(() {
    }));

    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 200);
        if (quotesPosition == 0) {
          quotesPosition++;
        } else {
          quotesPosition = 0;
        }
        width = 70.0;
      }
      else if (status == AnimationStatus.dismissed) {
        width = 0.0;
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(mDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: mDefaultPadding * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Instant.",
                        style: TextStyle(
                          fontSize: 50,
                          color: AppColors.PrimaryDarkColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Digital.",
                        style: TextStyle(
                          fontSize: 50,
                          color: AppColors.PrimaryDarkColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Contactless.",
                        style: TextStyle(
                          fontSize: 50,
                          color: AppColors.PrimaryDarkColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeTransition(
                        opacity: animation,
                        child: Text(
                          quotes[quotesPosition],
                          style: TextStyle(
                            color: AppColors.PrimaryDarkColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: width,
                        height: 7.00,
                        color: Colors.red[900],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GoogleLoginButton(
                        onPressed: () {
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MobileLoginButton(
                        onPressed: () {
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TermsConditionsText(   //  Terms Conditions Text
                        onCTPressed: () {
                          launch('https://moneyloji.com/');
                        },
                        onPPPressed: () {
                          launch('https://moneyloji.com/');
                        },
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
