import 'package:basket_ball/widgets/custom_column_contain_result_widget.dart';
import 'package:flutter/material.dart';

class CustomRowResultWidget extends StatelessWidget {
  const CustomRowResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 490,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomColumnContainResultWidget(
            text: 'Team X',
          ),
          SizedBox(
            width: 20,
          ),
          VerticalDivider(
            color: Colors.grey,
            indent: 45,
          ),
          SizedBox(
            width: 20,
          ),
          CustomColumnContainResultWidget(
            text: 'Team O',
          ),
        ],
      ),
    );
  }
}
