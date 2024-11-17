import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainResultWidget extends StatefulWidget {
  const CustomColumnContainResultWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<CustomColumnContainResultWidget> createState() =>
      _CustomColumnContainResultWidgetState();
}

class _CustomColumnContainResultWidgetState
    extends State<CustomColumnContainResultWidget> {
  int score = 0;
  void addOnePoint() {
    setState(
      () {
        score++;
      },
    );
  }

  void addTwoPoint() {
    setState(
      () {
        score = score + 2;
      },
    );
  }

  void addThreePoint() {
    setState(
      () {
        score = score + 3;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        CustomTextWidget(
          text: widget.text,
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
