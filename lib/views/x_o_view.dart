/*
import 'package:basket_ball/constant.dart';
import 'package:basket_ball/cubits/xo_cubit/x_o_cubit.dart';
import 'package:basket_ball/views/result_view.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:basket_ball/widgets/custom_x_o_game_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class XOView extends StatelessWidget {
  const XOView({super.key});
  static String xoViewId = 'XOView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => XOCubit(),
      child: Scaffold(
        backgroundColor: kDrunkenColor,
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Expanded(
              child: CustomXOGameWidget(),
            ),
            CustomElevatedButtonWidget(
              backgroundColor: kWhiteColor,
              onPressed: () {
                Navigator.of(context).pushNamed(
                  ResultView.resultViewId,
                );
              },
              text: 'Result',
              color: kDrunkenColor,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
*/
