part of 'walkthrough_cubit.dart';

abstract class WalkthroughState extends Equatable {
  const WalkthroughState();

  @override
  List<Object> get props => [];
}

class WalkthroughInitial extends WalkthroughState {}

class WalkthroughLoading extends WalkthroughState {}

class WalkthroughLoaded extends WalkthroughState {
  final String title;
  final String lottiePath;
  const WalkthroughLoaded({
    required this.title,
    required this.lottiePath,
  });

  @override
  List<Object> get props => [title, lottiePath];
}

class WalkthroughError extends WalkthroughState {
  final String message;
  const WalkthroughError({required this.message});

  @override
  List<Object> get props => [message];
}
