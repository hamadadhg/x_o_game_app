/*
import 'package:basket_ball/constant.dart';
import 'package:basket_ball/cubits/result_cubit/result_cubit.dart';
import 'package:basket_ball/widgets/custom_reset_button_widget.dart';
import 'package:basket_ball/widgets/custom_row_result_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});
  static String resultViewId = 'ResultView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResultCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: kOrangeColor,
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
            SizedBox(
              height: 35,
            ),
            CustomResetButtonWidget(),
          ],
        ),
      ),
    );
  }
}
*/
