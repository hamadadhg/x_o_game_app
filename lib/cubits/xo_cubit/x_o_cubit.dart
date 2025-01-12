import 'package:basket_ball/constant.dart';
import 'package:basket_ball/cubits/xo_cubit/x_o_state.dart';
import 'package:basket_ball/widgets/custom_text_button_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class XOCubit extends Cubit<XOState> {
  XOCubit()
      : super(
          XOInitialState(),
        );
  void xoMethod({required BuildContext context, required String? element}) {
    if (element != null) {
      emit(
        XONoAnotherSelectState(),
      );
      return;
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Center(
            child: CustomTextWidget(
              text: 'Select X Or O',
              fontSize: 27,
              color: Colors.grey,
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextButtonWidget(
                  backgroundColor: const Color(
                    0xffFFE9E9,
                  ),
                  onPressed: () {
                    element = 'X';
                    Navigator.pop(
                      context,
                    );
                  },
                  text: 'X',
                  fontSize: 30,
                  color: kDeepRedColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextButtonWidget(
                  backgroundColor: const Color(
                    0xffE6F4FA,
                  ),
                  onPressed: () {
                    element = 'O';
                    Navigator.pop(
                      context,
                    );
                  },
                  text: 'O',
                  fontSize: 30,
                  color: kDeepBlueColor,
                ),
              ],
            ),
          ),
        );
      },
    );
    emit(
      XOSelectState(),
    );
  }
}
