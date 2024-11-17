import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainResultWidget extends StatelessWidget {
  const CustomColumnContainResultWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        CustomTextWidget(
          text: text,
          fontSize: 45,
          color: kBlackColor,
        ),
        CustomTextWidget(
          text: '0',
          fontSize: 180,
          color: kBlackColor,
        ),
        CustomElevatedButtonWidget(
          borderRadius: 0,
          widthElevatedButton: 150,
          heightElevatedButton: 48,
          backgroundColor: const Color(
            0xffFE9900,
          ),
          onPressed: () {},
          text: 'Add 1 Point',
          color: kBlackColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 15,
        ),
        CustomElevatedButtonWidget(
          borderRadius: 0,
          widthElevatedButton: 150,
          heightElevatedButton: 48,
          backgroundColor: const Color(
            0xffFE9900,
          ),
          onPressed: () {},
          text: 'Add 2 Point',
          color: kBlackColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 15,
        ),
        CustomElevatedButtonWidget(
          borderRadius: 0,
          widthElevatedButton: 150,
          heightElevatedButton: 48,
          backgroundColor: const Color(
            0xffFE9900,
          ),
          onPressed: () {},
          text: 'Add 3 Point',
          color: kBlackColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
