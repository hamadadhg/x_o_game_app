/*
import 'package:basket_ball/constant.dart';
import 'package:basket_ball/cubits/result_cubit/result_cubit.dart';
import 'package:basket_ball/cubits/result_cubit/result_state.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomResetButtonWidget extends StatelessWidget {
  const CustomResetButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultCubit, ResultState>(
      builder: (context, state) {
        return SizedBox(
          child: CustomElevatedButtonWidget(
            borderRadius: 0,
            widthElevatedButton: 200,
            heightElevatedButton: 50,
            backgroundColor: kOrangeColor,
            onPressed: () {
              BlocProvider.of<ResultCubit>(context).resetPointsMethod();
            },
            text: 'Reset',
            color: kBlackColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
*/
