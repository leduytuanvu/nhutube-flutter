import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'subscript_event.dart';
part 'subscript_state.dart';

class SubscriptBloc extends Bloc<SubscriptEvent, SubscriptState> {
  SubscriptBloc() : super(SubscriptInitial()) {
    on<SubscriptEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
