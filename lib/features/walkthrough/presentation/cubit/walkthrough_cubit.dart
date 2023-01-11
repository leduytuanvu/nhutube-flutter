import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/configs/app_lottie.dart';

part 'walkthrough_state.dart';

class WalkthroughCubit extends Cubit<WalkthroughState> {
  WalkthroughCubit() : super(WalkthroughInitial());

  int _index = 0;
  int get index => _index;

  final String _titleButton = "CONTINUE";
  String get titleButton => _titleButton;

  final List<String> _listLottie = [
    AppLottie.walkthrough1,
    AppLottie.walkthrough2,
    AppLottie.walkthrough3,
  ];
  List get listLotties => _listLottie;

  final List<String> _listTitle = [
    "Watching interesting videos from around the world",
    "Watching interesting videos easily from your smartphone",
    "Let's explore videos around the world with Nhutube now"
  ];
  List get listTitle => _listTitle;

  init() {
    emit(WalkthroughLoaded(
      title: _listTitle[0],
      lottiePath: _listLottie[0],
    ));
  }

  Future changeIndex() async {
    emit(WalkthroughLoading());
    try {
      _index++;
      emit(WalkthroughLoaded(
        title: _listTitle[_index],
        lottiePath: _listLottie[_index],
      ));
    } catch (e) {
      emit(WalkthroughError(message: e.toString()));
    }
  }
}
