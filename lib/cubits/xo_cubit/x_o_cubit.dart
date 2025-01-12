import 'package:basket_ball/cubits/xo_cubit/x_o_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class XOCubit extends Cubit<XOState> {
  XOCubit()
      : super(
          XOInitialState(),
        );
}
