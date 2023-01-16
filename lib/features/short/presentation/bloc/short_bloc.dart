import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'short_event.dart';
part 'short_state.dart';

class ShortBloc extends Bloc<ShortEvent, ShortState> {
  ShortBloc() : super(ShortInitial()) {
    on<ShortEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
