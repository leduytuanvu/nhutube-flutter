import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBarCubit extends Cubit<int> {
  BottomBarCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }
}
