import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:fluttertest/config/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppTheme.light) {
    initpref();
    _loadTheme();
  }
  late SharedPreferences pref;
  static const String key = "theme";
  Future<void> _loadTheme() async {
    final bool isdark = pref.getBool(key) ?? false;
    emit(isdark ? AppTheme.dark : AppTheme.light);
  }

  Future<void> changeTheme({required final bool isdark}) async {
    if (isdark) {
      emit(AppTheme.dark);
      pref.setBool(key, true);
    } else {
      emit(AppTheme.light);
      pref.setBool(key, false);
    }
  }

  Future<void> initpref() async {
    pref = await SharedPreferences.getInstance();
  }
}
