import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/custom_drawer.dart';

class AddFoodView extends StatefulWidget {
  final PageController pageController;
  AddFoodView({Key? key, required this.pageController}) : super(key: key);

  @override
  _AddFoodViewState createState() => _AddFoodViewState();
}

class _AddFoodViewState extends State<AddFoodView> {
  final List<String> categories = [
    "Comida",
    "Bebida",
    "Carne",
    "Salada",
    "Sobremesa",
    "Fruta",
  ];

  int indexCategorySelected = 0;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Row(
      children: [
        CustomDrawer(widget.pageController),
        SizedBox(width: deviceSize.width * 0.05),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 5,
                    height: 50,
                    color: Colors.red,
                  ),
                  Text(
                    "Cadastrar Alimento",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(height: deviceSize.height * 0.05),
              Expanded(
                child: Container(
                  width: deviceSize.width * 0.7,
                  // height: deviceSize.height / 1.3,
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.symmetric(
                    horizontal: deviceSize.width * 0.03,
                    vertical: deviceSize.height * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Categoria'),
                              Row(
                                children: [
                                  Container(
                                    width: deviceSize.width / 4,
                                    child: DropdownButton(
                                      isExpanded: true,
                                      value: categories[indexCategorySelected],
                                      onChanged: (String? v) {
                                        if (v != null) {
                                          setState(() {
                                            indexCategorySelected =
                                                categories.indexOf(v);
                                          });
                                        }
                                      },
                                      items: categories
                                          .map((String category) =>
                                              DropdownMenuItem(
                                                child: Text(category),
                                                value: category,
                                                onTap: () {
                                                  indexCategorySelected =
                                                      categories
                                                          .indexOf(category);
                                                },
                                              ))
                                          .toList(),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.info_outline),
                                      onPressed: () {}),
                                ],
                              ),
                              Text('Título'),
                              Row(
                                children: [
                                  Container(
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
                              Text('Imagem'),
                              Row(
                                children: [
                                  Container(
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: deviceSize.height * 0.05),
              Padding(
                padding: EdgeInsets.only(
                  bottom: deviceSize.height * 0.05,
                  right: deviceSize.width * 0.07,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: deviceSize.width * 0.15,
                      height: deviceSize.height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.grey,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancelar',
                          style: TextStyle(color: AppColors.darkGrey),
                        ),
                      ),
                    ),
                    SizedBox(width: deviceSize.width * 0.02),
                    Container(
                      width: deviceSize.width * 0.15,
                      height: deviceSize.height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.defaultBlue,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Salvar',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
