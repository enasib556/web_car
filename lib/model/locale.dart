import 'package:flutter/material.dart';

class LocaleModel extends ChangeNotifier {
  Locale? _locale;

  Locale get locale {
   return _locale ?? const Locale('ar');
  }

  void set(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}