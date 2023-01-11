import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'start_state.dart';

class StartCubit extends Cubit<StartState> {
  StartCubit() : super(StartInitial());
}
