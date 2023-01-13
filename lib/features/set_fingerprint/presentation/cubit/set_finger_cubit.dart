import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'set_finger_state.dart';

class SetFingerCubit extends Cubit<SetFingerState> {
  SetFingerCubit() : super(SetFingerInitial());
}
