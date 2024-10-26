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
      'contact_us': 'Contact Us',
      'help':'help',
      'login':'Login',
      'get_car':'Get a New Car',
      'login_for_price': 'Log in for price'
    },
    'ar': {
      'home':'الرئيسية',
      'buy':'شراء',
      'contact_us':'التواصل معنا',
      'help':'المساعده',
      'login':'تسجيل الدخول',
      'get_car':'احصل علي سيارتك الجديده',
      'login_for_price':'تسجيل الدخول للحصول على السعر'
    }
  };

  String? get login {
    return _localizedValues[locale.languageCode]
    ?['login'];
  }

  String? get getCar {
    return _localizedValues[locale.languageCode]
    ?['get_car'];
  }

  String? get contactUs {
    return _localizedValues[locale.languageCode]
    ?['contact_us'];
  }

  String? get buy {
    return _localizedValues[locale.languageCode]
    ?['buy'];
  }


  String? get help {
    return _localizedValues[locale.languageCode]
    ?['help'];
  }


  String? get home {
    return _localizedValues[locale.languageCode]
    ?['home'];
  }

  String? get login_for_price {
    return _localizedValues[locale.languageCode]
    ?['Log in for price'];
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