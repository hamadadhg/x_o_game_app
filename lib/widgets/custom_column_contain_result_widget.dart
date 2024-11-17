import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainResultWidget extends StatelessWidget {
  const CustomColumnContainResultWidget({
    super.key,
    required this.text,
    required this.score,
    required this.addOnePoint,
    required this.addTwoPoint,
    required this.addThreePoint,
  });
  final String text;
  final int score;
  final VoidCallback addOnePoint;
  final VoidCallback addTwoPoint;
  final VoidCallback addThreePoint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        CustomTextWidget(
          text: text,
          fontSize: 38,
          color: kBlackColor,
        ),
        CustomTextWidget(
          text: score.toString(),
          fontSize: 150,
          color: kBlackColor,
        ),
        CustomElevatedButtonWidget(
          borderRadius: 0,
          widthElevatedButton: 150,
          heightElevatedButton: 48,
          backgroundColor: const Color(
            0xffFE9900,
          ),
          onPressed: addOnePoint,
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
          onPressed: addTwoPoint,
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
          onPressed: addThreePoint,
          text: 'Add 3 Point',
          color: kBlackColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
