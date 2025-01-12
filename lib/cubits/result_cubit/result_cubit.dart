import 'package:basket_ball/cubits/result_cubit/result_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultCubit extends Cubit<ResultState> {
  ResultCubit()
      : super(
          ResultInitialState(),
        );
}
