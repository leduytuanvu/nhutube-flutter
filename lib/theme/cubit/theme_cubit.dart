import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:nhutube/theme/app_theme.dart';
import '../../core/services/shared_preferences_service.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  Future<void> getSavedTheme() async {
    emit(ThemeLoading());
    try {
      final String themeLocal = await SharedPreferencesService().getTheme();
      if (themeLocal == "dark") {
        emit(ThemeLoaded(theme: darkTheme));
      } else {
        emit(ThemeLoaded(theme: lightTheme));
      }
    } catch (e) {
      emit(ThemeError(message: e.toString()));
    }
  }

  Future<void> changeTheme(String theme) async {
    emit(ThemeLoading());
    try {
      await SharedPreferencesService().setTheme(theme: theme);
      if (theme == "dark") {
        emit(ThemeLoaded(theme: darkTheme));
        log("$theme ================== 1");
      } else {
        emit(ThemeLoaded(theme: lightTheme));
        log("$theme ================== 2");
      }
    } catch (e) {
      emit(ThemeError(message: e.toString()));
    }
  }
}
