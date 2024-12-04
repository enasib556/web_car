import 'package:flutter/material.dart';

class LocaleModel with ChangeNotifier {

  Locale _currentLocale = const Locale('ar'); // اللغة الافتراضية العربية

  Locale get currentLocale => _currentLocale;

  void set(Locale newLocale) {
    _currentLocale = newLocale;
    notifyListeners();  // إخطار المستمعين لتحديث الواجهة
  }
}
