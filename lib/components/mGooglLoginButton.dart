import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleLoginButton extends StatelessWidget {
  GestureTapCallback onPressed;

  GoogleLoginButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: BorderSide(color: Colors.blue)),
      onPressed: onPressed,
      textColor: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset('assets/images/ic_google_logo.svg'),
          SizedBox(width: 10,),
          Text('Login with Google', style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}