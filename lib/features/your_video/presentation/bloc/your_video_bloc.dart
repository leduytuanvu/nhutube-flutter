import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'your_video_event.dart';
part 'your_video_state.dart';

class YourVideoBloc extends Bloc<YourVideoEvent, YourVideoState> {
  YourVideoBloc() : super(YourVideoInitial()) {
    on<YourVideoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
