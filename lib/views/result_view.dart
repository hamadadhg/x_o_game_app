import 'package:basket_ball/widgets/custom_row_result_widget.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});
  static String resultViewId = 'ResultView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomRowResultWidget(),
        ],
      ),
    );
  }
}
