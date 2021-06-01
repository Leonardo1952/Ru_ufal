import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:ru_ufal/core/internacionalization/app_localization_delegate.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  late Map<String, Map> _localizationsStrings;

  //Metodo para carregar os arquivos
  Future<bool> load() async {
    String jsonString =
        await rootBundle.loadString('i18n/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizationsStrings = jsonMap.map((key, value) {
      return MapEntry(key, value);
    });
    return true;
  }

  //Metodo para realizar a tradução
  String? translate(String screenKey, String key) {
    return _localizationsStrings[screenKey]![key];
  }

  //
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  //
  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();
}
