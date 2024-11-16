import 'package:basket_ball/widgets/custom_column_in_stack_widget.dart';
import 'package:basket_ball/widgets/custom_row_in_stack_widget.dart';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomRowInStackWidget(),
        CustomColumnInStackWidget(),
      ],
    );
  }
}
