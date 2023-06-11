import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textColor,
    required this.text,
    required this.onPressed
  }) : super(key: key);
  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 158,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle16
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}