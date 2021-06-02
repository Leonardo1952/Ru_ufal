import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ru_ufal/view/drawer/custom_drawer.dart';

class AddMenuView extends StatelessWidget {
  final PageController pageController;
  const AddMenuView({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Row(
                children: [
                  CustomDrawer(pageController),
                  SizedBox(width: deviceSize.width * 0.05),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cadastrar Cardápio",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                        Container(
                          // width: deviceSize.width,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // margin: const EdgeInsets.only(
                                          //     left: 30, top: 10),
                                          child: Text('Refeição'),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              // margin:
                                              //     const EdgeInsets.only(left: 30),
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
                                          // margin: const EdgeInsets.only(left: 30),
                                          child: Text('Alimento'),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              // margin:
                                              //     const EdgeInsets.only(left: 30),
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
                                        //Trabalhando com data
                                        Container(
                                          // margin: const EdgeInsets.only(left: 30),
                                          child: Text('Data'),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              // margin:
                                              //     const EdgeInsets.only(left: 30),
                                              width: deviceSize.width / 4,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                                icon: Icon(Icons.date_range),
                                                onPressed: () async {
                                                  final data =
                                                      await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              DateTime.now(),
                                                          firstDate:
                                                              DateTime(2000),
                                                          lastDate:
                                                              DateTime(2030),
                                                          locale: Locale(
                                                              "pt", "BR"));
                                                }),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          // margin: const EdgeInsets.only(
                                          //     left: 50, top: 10),
                                          width: deviceSize.width / 4,
                                          child: Column(
                                            children: [
                                              Text('Bebida'),
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
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              // margin: const EdgeInsets.all(10),
                              width: 250,
                              height: 50,
                              color: Color(0xFF828383),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text('Cancelar',
                                      style: TextStyle(color: Colors.white))),
                            ),
                            Container(
                              // margin: const EdgeInsets.all(50),
                              width: 250,
                              height: 50,
                              color: Color(0xFF0095DA),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Salvar',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
