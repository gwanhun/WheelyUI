import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileButtonWidget extends StatelessWidget {
  const MobileButtonWidget({
    Key? key,
    required this.buttonText,
    required this.buttonTextColor,
    this.buttonColor,
  }) : super(key: key);

  final String buttonText;
  final Color buttonTextColor;
  final Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300.w,
        height: 54.h,
        child: MaterialButton(
            onPressed: () {},
            color: buttonColor,
            textColor: buttonTextColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text(buttonText)));
  }
}
