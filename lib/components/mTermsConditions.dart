import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsConditionsText extends StatelessWidget {
  GestureTapCallback onCTPressed;
  GestureTapCallback onPPPressed;

  TermsConditionsText({@required this.onCTPressed, @required this.onPPPressed});

  TextStyle defaultStyle = TextStyle(color: Colors.black45,fontFamily: 'Montserrat');
  TextStyle linkStyle = TextStyle(
    color: Colors.black,
    decoration: TextDecoration.underline,
      fontFamily: 'Montserrat'
  );

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: 'By login, you agreed to MoneyLoji\'s ',style: TextStyle(fontFamily: 'Montserrat',)),
          TextSpan(
              text: 'Terms & Conditions',
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = onCTPressed),
          TextSpan(text: ' and '),
          TextSpan(
              text: 'Privacy Policies',
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = onPPPressed),
        ],
      ),
    );
  }
}
