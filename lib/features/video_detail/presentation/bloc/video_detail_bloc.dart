import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'video_detail_event.dart';
part 'video_detail_state.dart';

class VideoDetailBloc extends Bloc<VideoDetailEvent, VideoDetailState> {
  VideoDetailBloc() : super(VideoDetailInitial()) {
    on<VideoDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
