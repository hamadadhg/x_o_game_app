import 'package:basket_ball/widgets/custom_divider_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnInStackWidget extends StatelessWidget {
  const CustomColumnInStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomDividerWidget(),
        SizedBox(
          height: 85,
        ),
        CustomDividerWidget(),
      ],
    );
  }
}
