import 'package:flutter/material.dart';
import 'package:ru_ufal/core/internacionalization/app_localizations.dart';

class AppTranslate {
  final BuildContext context;

  AppTranslate(this.context);

  String? text(String screenKey, String key) {
    return AppLocalizations.of(context)!.translate(screenKey, key);
  }
}
