import 'package:basket_ball/views/x_o_view.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({super.key});

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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(
            250,
            75,
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.black.withOpacity(
            0.25,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              35,
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(
            XOView.xoViewId,
          );
        },
        child: const Center(
          child: CustomTextWidget(
            text: 'Start Game',
            fontSize: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
