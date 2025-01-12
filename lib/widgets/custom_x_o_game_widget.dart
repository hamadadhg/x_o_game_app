import 'package:basket_ball/constant.dart';
import 'package:basket_ball/cubits/xo_cubit/x_o_cubit.dart';
import 'package:basket_ball/cubits/xo_cubit/x_o_state.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomXOGameWidget extends StatelessWidget {
  const CustomXOGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDrunkenColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: BlocBuilder<XOCubit, XOState>(
          builder: (context, state) {
            final listOfXOrOValues = context.read<XOCubit>().listOfXOrOValues;
            return Center(
              child: SizedBox(
                height: 500,
                width: 500,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemCount: listOfXOrOValues.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        BlocProvider.of<XOCubit>(context).xoMethod(
                          context: context,
                          index: index,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          color: kWhiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: kBlackColor.withValues(
                                alpha: 0.1,
                              ),
                              blurRadius: 4,
                              offset: const Offset(
                                2,
                                2,
                              ),
                            ),
                          ],
                        ),
                        child: Center(
                          child: CustomTextWidget(
                            text: listOfXOrOValues[index] ?? '',
                            fontSize: 50,
                            color: listOfXOrOValues[index] == 'X'
                                ? kDeepRedColor
                                : kDeepBlueColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
