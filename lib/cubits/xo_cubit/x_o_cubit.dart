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
  List<String?> listOfXOrOValues = List.filled(
    9,
    null,
  );
  // this List should filled(fill in 9 elements and all elements the value of them is null)
  void xoMethod({
    required BuildContext context,
    required int index,
  }) {
    if (listOfXOrOValues[index] != null) {
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
                    listOfXOrOValues[index] = 'X';

                    emit(
                      XOSelectState(),
                    );
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
                    listOfXOrOValues[index] = 'O';

                    emit(
                      XOSelectState(),
                    );
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
  }
}
