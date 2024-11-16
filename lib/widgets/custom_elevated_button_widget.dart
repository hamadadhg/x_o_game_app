import 'package:basket_ball/views/x_o_view.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(
          250,
          75,
        ),
        backgroundColor: const Color(
          0xffffffff,
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
        child: Text(
          'Start Game',
          style: TextStyle(
            color: Color(
              0xff1db954,
            ),
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
