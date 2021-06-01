import 'package:flutter/material.dart';
import 'package:ru_ufal/view/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RU Ufal",
      // theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
