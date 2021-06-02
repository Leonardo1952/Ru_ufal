import 'package:flutter/material.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/custom_drawer.dart';
import 'package:ru_ufal/view/qr_code/qr_code_view.dart';
import '../drawer/custom_drawer.dart';
import 'dart:io';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    String valor_qrCode = '';
    return Scaffold(
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.blue,
              child: TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Informe o valor do Qr Code'),
                    content: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new TextField(
                              onChanged: (text) {
                                valor_qrCode = text;
                              },
                              autofocus: true,
                              decoration:
                                  new InputDecoration(hintText: 'R\$: 3,00'),
                              keyboardType: TextInputType.number),
                        )
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, ''),
                        child: const Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) =>
                                    QrCodePage(valorQrCode: valor_qrCode))),
                        child: const Text('Gerar'),
                      ),
                    ],
                  ),
                ),
                child: const Text('Gerar Qr Code',
                    style: TextStyle(color: Colors.white)),
              ),
            ),

            //Gerador de QRCODE
          ],
        ),
      ),
    );
  }
}
