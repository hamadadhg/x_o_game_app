import 'package:basket_ball/cubits/result_cubit/result_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultCubit extends Cubit<ResultState> {
  ResultCubit()
      : super(
          ResultInitialState(),
        );
  int teamXPoints = 0;
  int teamOPoints = 0;

  void addPointsMethod({required String nameTeam, required int buttonNumber}) {
    if (nameTeam == 'Team X') {
      teamXPoints += buttonNumber;
      emit(
        ResultAddPointsState(),
      );
    } else {
      teamOPoints += buttonNumber;
      emit(
        ResultAddPointsState(),
      );
    }
  }

  void resetPointsMethod() {
    teamXPoints = 0;
    teamOPoints = 0;
    emit(
      ResultResetPointsState(),
    );
  }
}
