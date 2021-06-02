import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddFoodView extends StatelessWidget {
  final PageController pageController;
  const AddFoodView({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                  Text(
                    "Cadastrar Alimento",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 400), //Reajustar essa tela
                    child: Container(
                      width: deviceSize.width,
                      height: deviceSize.height / 1.3,
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
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 30, top: 10),
                                      child: Text('Categoria'),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 30),
                                          width: deviceSize.width / 4,
                                          child: DropdownButton(
                                            items: [],
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.info_outline),
                                            onPressed: () {}),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.transparent,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      child: Text('Título'),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 30),
                                          width: deviceSize.width / 4,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.info_outline),
                                            onPressed: () {}),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.transparent,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      child: Text('Imagem'),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 30),
                                          width: deviceSize.width / 4,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.info_outline),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      width: deviceSize.width / 4,
                                      child: Column(
                                        children: [
                                          Text('Vegetariano'),
                                          TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.transparent,
                                    ),
                                    Text('Vegano'),
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 50),
                                          width: deviceSize.width / 4,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.info_outline),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 250,
                        height: 50,
                        color: Color(0xFF828383),
                        child: TextButton(
                            onPressed: () {},
                            child: Text('Cancelar',
                                style: TextStyle(color: Colors.white))),
                      ),
                      Container(
                        margin: const EdgeInsets.all(50),
                        width: 250,
                        height: 50,
                        color: Color(0xFF0095DA),
                        child: TextButton(
                            onPressed: () {},
                            child: Text('Salvar',
                                style: TextStyle(color: Colors.white))),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
