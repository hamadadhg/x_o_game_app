import 'package:basket_ball/widgets/custom_column_contain_result_widget.dart';
import 'package:flutter/material.dart';

class CustomRowResultWidget extends StatelessWidget {
  const CustomRowResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomColumnContainResultWidget(),
      ],
    );
  }
}
