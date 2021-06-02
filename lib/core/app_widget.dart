import 'package:flutter/material.dart';
import 'package:ru_ufal/view/custom_page_view/custom_page_view.dart';
import 'package:ru_ufal/view/home/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [Locale("pt", "BR")],
      debugShowCheckedModeBanner: false,
      title: "RU Ufal",
      home: CustomPageView(),
    );
  }
}
