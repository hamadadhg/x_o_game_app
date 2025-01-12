import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_start_game_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String homeViewId = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: const Center(
        child: CustomStartGameWidget(),
      ),
    );
  }
}
