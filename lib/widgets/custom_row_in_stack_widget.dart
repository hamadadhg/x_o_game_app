import 'package:basket_ball/widgets/custom_vertical_divider_widget.dart';
import 'package:flutter/material.dart';

class CustomRowInStackWidget extends StatelessWidget {
  const CustomRowInStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomVerticalDividerWidget(),
        SizedBox(
          width: 85,
        ),
        CustomVerticalDividerWidget(),
      ],
    );
  }
}
