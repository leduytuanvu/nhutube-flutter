import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void delay() async {
    emit(SplashLoading());
    try {
      await Future.delayed(const Duration(seconds: 1));
      emit(SplashLoaded());
    } catch (e) {
      emit(SplashError(message: e.toString()));
    }
  }
}
