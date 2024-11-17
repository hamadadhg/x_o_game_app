import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_row_result_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});
  static String resultViewId = 'ResultView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(
          0xffFE9900,
        ),
        title: CustomTextWidget(
          text: 'XO Game',
          fontSize: 35,
          color: kWhiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const Column(
        children: [
          CustomRowResultWidget(),
        ],
      ),
    );
  }
}
