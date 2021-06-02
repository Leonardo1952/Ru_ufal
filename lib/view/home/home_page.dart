import 'dart:io';

import 'package:flutter/material.dart';

import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/custom_drawer.dart';
import 'package:ru_ufal/view/qr_code/qr_code_view.dart';

import '../drawer/custom_drawer.dart';

class HomePage extends StatelessWidget {
  final PageController pageController;
  const HomePage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    String valor_qrCode = '';
    return Row(
      children: [
        CustomDrawer(pageController),
        SizedBox(width: deviceSize.width * 0.05),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "RU UFAL",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              SizedBox(height: deviceSize.height * 0.1),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: deviceSize.height * 0.2,
                      width: deviceSize.width * 0.2,
                      decoration: BoxDecoration(
                        color: AppColors.defaultBlue,
                        borderRadius: BorderRadius.circular(15),
                      ),
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
                                      decoration: new InputDecoration(
                                          hintText: 'R\$: 3,00'),
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
                                onPressed: () =>
                                    Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => QrCodeView(
                                      valorQrCode: valor_qrCode,
                                      pageController: pageController,
                                    ),
                                  ),
                                ),
                                child: const Text('Gerar'),
                              ),
                            ],
                          ),
                        ),
                        child: Text('Gerar Qr Code',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //Gerador de QRCODE
      ],
    );
  }
}
