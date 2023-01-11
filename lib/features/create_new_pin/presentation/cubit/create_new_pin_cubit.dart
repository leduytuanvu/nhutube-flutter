import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_new_pin_state.dart';

class CreateNewPinCubit extends Cubit<CreateNewPinState> {
  CreateNewPinCubit() : super(CreateNewPinInitial());
}
