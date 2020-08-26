import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileLoginButton extends StatelessWidget {
  GestureTapCallback onPressed;

  MobileLoginButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: BorderSide(color: Colors.blueGrey)),
      onPressed: onPressed,
      textColor: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Login with Mobile',style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
