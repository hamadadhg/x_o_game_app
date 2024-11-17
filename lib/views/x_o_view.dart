import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';

import 'package:basket_ball/widgets/custom_x_o_game_widget.dart';
import 'package:flutter/material.dart';

class XOView extends StatelessWidget {
  const XOView({super.key});
  static String xoViewId = 'XOView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffF3E9D2,
      ),
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
            onPressed: () {},
            text: 'Result',
            color: const Color(
              0xffF3E9D2,
            ),
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
