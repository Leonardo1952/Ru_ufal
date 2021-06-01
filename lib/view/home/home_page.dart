import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            Container(
              color: Colors.blue,
              child: Column(
                children: [Text("data")],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
