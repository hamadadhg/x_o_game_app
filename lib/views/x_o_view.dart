import 'package:flutter/material.dart';

class XOView extends StatelessWidget {
  const XOView({super.key});
  static String xoViewId = 'XOView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack();
  }
}
