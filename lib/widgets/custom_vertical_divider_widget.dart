import 'package:flutter/material.dart';

class CustomVerticalDividerWidget extends StatelessWidget {
  const CustomVerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      indent: 250,
      endIndent: 250,
    );
  }
}
