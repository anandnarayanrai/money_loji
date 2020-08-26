import 'package:flutter/cupertino.dart';
import 'package:money_loji/constant/AppColors.dart';

class AppTextView extends StatelessWidget {
  final String text;
  final double fontSize;

  AppTextView({@required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(fontSize: fontSize, color: AppColors.PrimaryDarkColor),
    );
  }
}
