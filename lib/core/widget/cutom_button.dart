import 'package:book/core/utils/style.dart';
import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  const CutomButton(
      {super.key,
      required this.backgroundColor,
      required this.textcolor,
      required this.text,
      this.borderRadius, 
      this.onPressed});
  final Color backgroundColor;
  final Color textcolor;
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(10))),
          child: Text(
            text,
            style: style.textStyle18
                .copyWith(color: textcolor, fontWeight: FontWeight.bold),
          )),
    );
  }
}
