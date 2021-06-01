import 'package:flutter/material.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/custom_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurante Universitário"),
      ),
      body: Center(
          child: Container(
        height: altura,
        width: largura,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              children: [
                Container(height: 100, width: 100, color: Colors.blue),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
