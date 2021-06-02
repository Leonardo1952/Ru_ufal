import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:ru_ufal/view/home/home_page.dart';

class QrCodePage extends StatelessWidget {
  final String valorQrCode;

  const QrCodePage({Key? key, required this.valorQrCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'QrCode gerado com o valor de R\$$valorQrCode',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red),
          ),
          Divider(
            color: Colors.transparent,
          ),
          QrImage(
            data: valorQrCode,
            gapless: true,
            errorCorrectionLevel: QrErrorCorrectLevel.H,
            size: 200,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Text('Voltar a tela iniciar')),
            ],
          )
        ],
      ),
    );
  }
}
