import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_column_contain_result_widget.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
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
      body: Column(
        children: [
          const CustomRowResultWidget(),
          const SizedBox(
            height: 80,
          ),
          CustomElevatedButtonWidget(
            borderRadius: 0,
            widthElevatedButton: 200,
            heightElevatedButton: 50,
            backgroundColor: const Color(
              0xffFE9900,
            ),
            onPressed: () {},
            text: 'Reset',
            color: kBlackColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
