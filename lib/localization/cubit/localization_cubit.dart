import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nhutube/core/services/shared_preferences_service.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  Future<void> getSavedLanguage() async {
    emit(LocalizationLoading());
    try {
      final String languageLocal =
          await SharedPreferencesService().getLocalization();
      emit(LocalizationLoaded(locale: Locale(languageLocal)));
    } catch (e) {
      emit(LocalizationError(message: e.toString()));
    }
  }

  Future<void> changeLanguage(String languageCode) async {
    emit(LocalizationLoading());
    try {
      await SharedPreferencesService().setLocalization(
        localization: languageCode,
      );
      emit(LocalizationLoaded(locale: Locale(languageCode)));
    } catch (e) {
      emit(LocalizationError(message: e.toString()));
    }
  }
}
