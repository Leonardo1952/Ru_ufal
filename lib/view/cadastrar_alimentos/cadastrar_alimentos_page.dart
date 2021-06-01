import 'package:flutter/material.dart';

class CadastrarAlimentoPage extends StatelessWidget {
  const CadastrarAlimentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Cadastrar Alimento",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          /*Padding(
            padding: const EdgeInsets.only(left: 400), //Reajustar essa tela
            child: Container(
              width: deviceSize.width,
              height: deviceSize.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    height: deviceSize.height / 1.65,
                    width: deviceSize.width / (3 / 2),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Categoria'),
                            Container(
                              width: deviceSize.width / 4,
                              child: DropdownButton(
                                items: [],
                              ),
                            ),
                            Divider(
                              color: Colors.transparent,
                            ),
                            Text('Título'),
                            Container(
                              width: deviceSize.width / 4,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.transparent,
                            ),
                            Text('Imagem'),
                            Container(
                              width: deviceSize.width / 4,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: 80,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Vegetariano'),
                            Container(
                              width: deviceSize.width / 4,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.transparent,
                            ),
                            Text('Vegano'),
                            Container(
                              width: deviceSize.width / 4,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),*/
          Row(
            children: [
              Container(
                width: 250,
                height: 50,
                color: Color(0xFF828383),
                child: TextButton(onPressed: () {}, child: Text('Cancelar')),
              ),
              Container(
                width: 250,
                height: 50,
                color: Color(0xFF0095DA),
                child: TextButton(onPressed: () {}, child: Text('Salvar')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
