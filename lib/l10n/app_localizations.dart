import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static final Map<String, Map<String, dynamic>> _localizedValues = {
    'en': {
      'home':'Home',
      'buy':'Buy',
      'sell':'Sell',
      'contact_us': 'Contact Us',
      'login':'Login'
    },
    'ar': {
      'home':'الرئيسية',
      'buy':'شراء',
      'sell':'بيع',
      'contact_us':'التواصل معنا',
      'login':'تسجيل الدخول'
    }
  };

  String? get login {
    return _localizedValues[locale.languageCode]
    ?['login'];
  }

  String? get contactUs {
    return _localizedValues[locale.languageCode]
    ?['contact_us'];
  }

  String? get buy {
    return _localizedValues[locale.languageCode]
    ?['buy'];
  }


  String? get sell {
    return _localizedValues[locale.languageCode]
    ?['sell'];
  }


  String? get home {
    return _localizedValues[locale.languageCode]
    ?['home'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}