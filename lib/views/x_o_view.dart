import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_x_o_game_widget.dart';
import 'package:flutter/material.dart';

class XOView extends StatelessWidget {
  const XOView({super.key});
  static String xoViewId = 'XOView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: const CustomXOGameWidget(),
    );
  }
}
