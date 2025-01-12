/*
import 'package:basket_ball/constant.dart';
import 'package:basket_ball/views/x_o_view.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';

class CustomStartGameWidget extends StatelessWidget {
  const CustomStartGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(
              0xff1db954,
            ),
            Color(
              0xff12823B,
            ),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(
          35,
        ),
      ),
      child: CustomElevatedButtonWidget(
        backgroundColor: Colors.transparent,
        onPressed: () {
          Navigator.of(context).pushNamed(
            XOView.xoViewId,
          );
        },
        text: 'Start Game',
        color: kWhiteColor,
      ),
    );
  }
}
*/
