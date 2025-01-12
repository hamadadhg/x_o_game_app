/*
import 'package:basket_ball/cubits/result_cubit/result_cubit.dart';
import 'package:basket_ball/cubits/result_cubit/result_state.dart';
import 'package:basket_ball/widgets/custom_column_contain_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomRowResultWidget extends StatelessWidget {
  const CustomRowResultWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultCubit, ResultState>(
      builder: (context, state) {
        return SizedBox(
          height: 490,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomColumnContainResultWidget(
                text: 'Team X',
                score: context.read<ResultCubit>().teamXPoints,
                addOnePoint: () {
                  BlocProvider.of<ResultCubit>(context).addPointsMethod(
                    nameTeam: 'Team X',
                    buttonNumber: 1,
                  );
                },
                addTwoPoint: () {
                  BlocProvider.of<ResultCubit>(context).addPointsMethod(
                    nameTeam: 'Team X',
                    buttonNumber: 2,
                  );
                },
                addThreePoint: () {
                  BlocProvider.of<ResultCubit>(context).addPointsMethod(
                    nameTeam: 'Team X',
                    buttonNumber: 3,
                  );
                },
                color: Colors.lightGreenAccent,
              ),
              const SizedBox(
                width: 20,
              ),
              const VerticalDivider(
                color: Colors.grey,
                indent: 45,
              ),
              const SizedBox(
                width: 20,
              ),
              CustomColumnContainResultWidget(
                text: 'Team O',
                score: context.read<ResultCubit>().teamOPoints,
                addOnePoint: () {
                  BlocProvider.of<ResultCubit>(context).addPointsMethod(
                    nameTeam: 'Team O',
                    buttonNumber: 1,
                  );
                },
                addTwoPoint: () {
                  BlocProvider.of<ResultCubit>(context).addPointsMethod(
                    nameTeam: 'Team O',
                    buttonNumber: 2,
                  );
                },
                addThreePoint: () {
                  BlocProvider.of<ResultCubit>(context).addPointsMethod(
                    nameTeam: 'Team O',
                    buttonNumber: 3,
                  );
                },
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        );
      },
    );
  }
}
*/
