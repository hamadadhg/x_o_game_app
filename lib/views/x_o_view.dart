import 'package:basket_ball/widgets/custom_stack_widget.dart';
import 'package:flutter/material.dart';

class XOView extends StatelessWidget {
  const XOView({super.key});
  static String xoViewId = 'XOView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: CustomStackWidget(),
    );
  }
}
