part of 'theme_cubit.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {}

class ThemeLoading extends ThemeState {}

class ThemeLoaded extends ThemeState {
  final ThemeData theme;
  const ThemeLoaded({required this.theme});

  @override
  List<Object> get props => [theme];
}

class ThemeError extends ThemeState {
  final String message;
  const ThemeError({required this.message});

  @override
  List<Object> get props => [message];
}
