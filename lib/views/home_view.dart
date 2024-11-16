import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String homeViewId = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CustomElevatedButtonWidget(),
      ),
    );
  }
}
