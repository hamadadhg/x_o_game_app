import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    super.key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    required this.color,
    this.fontSize = 35,
    this.fontWeight = FontWeight.normal,
    this.widthElevatedButton = 250,
    this.heightElevatedButton = 75,
    this.borderRadius = 35,
  });
  final Color backgroundColor;
  final void Function()? onPressed;
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double widthElevatedButton;
  final double heightElevatedButton;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          widthElevatedButton,
          heightElevatedButton,
        ),
        backgroundColor: backgroundColor,
        shadowColor: kBlackColor.withOpacity(
          0.25,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: CustomTextWidget(
          text: text,
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
