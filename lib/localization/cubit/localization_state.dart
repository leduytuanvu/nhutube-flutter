part of 'localization_cubit.dart';

abstract class LocalizationState extends Equatable {
  const LocalizationState();

  @override
  List<Object> get props => [];
}

class LocalizationInitial extends LocalizationState {}

class LocalizationLoading extends LocalizationState {}

class LocalizationLoaded extends LocalizationState {
  final Locale locale;
  const LocalizationLoaded({required this.locale});

  @override
  List<Object> get props => [locale];
}

class LocalizationError extends LocalizationState {
  final String message;
  const LocalizationError({required this.message});

  @override
  List<Object> get props => [message];
}
