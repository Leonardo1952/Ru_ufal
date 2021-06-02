import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/core/app_vectors.dart';
import 'package:ru_ufal/utils/formatter_util.dart';
import 'package:ru_ufal/view/drawer/custom_drawer.dart';

class AddMenuView extends StatefulWidget {
  final PageController pageController;
  AddMenuView({Key? key, required this.pageController}) : super(key: key);

  @override
  _AddMenuViewState createState() => _AddMenuViewState();
}

class _AddMenuViewState extends State<AddMenuView> {
  List<String> meals = ["Café da Manhã", "Almoço", "Jantar"];

  List<String> foods = ["Arroz", "Feijão", "Café", "Salada verde", "Suco"];

  List<Widget> mealsWidget = [];

  List<String> mealsSelected = [];
  List<String> foodsSelected = [];

  DateTime? date;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    mealsSelected.add(meals[0]);
    foodsSelected.add(foods[0]);
    print("mealsSelected: $mealsSelected");
    print("foods sele: $foodsSelected");

    if (this.mealsWidget.length == 0) {
      this.mealsWidget.add(this.fiels(index: 0));
    }

    return Row(
      children: [
        CustomDrawer(widget.pageController),
        SizedBox(width: deviceSize.width * 0.05),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cadastrar Cardápio",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              SizedBox(height: deviceSize.height * 0.05),
              Expanded(
                child: Container(
                  width: deviceSize.width * 0.7,
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.symmetric(
                    horizontal: deviceSize.width * 0.03,
                    vertical: deviceSize.height * 0.05,
                  ),
                  //COLUNA ENTRE CAMPOS E DATA/BOTAO ADICIONAR
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: this.mealsWidget.length,
                          itemBuilder: (context, index) {
                            return mealsWidget[index];
                          },
                        ),
                      ),
                      // Trabalhando com data
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Data'),
                              Row(
                                children: [
                                  Container(
                                    width: deviceSize.width * 0.15,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.symmetric(
                                      vertical: deviceSize.height * 0.01,
                                    ),
                                    child: Text(
                                      date != null
                                          ? FormatterUtil.dateFormatter(
                                              context, date!)
                                          : "",
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.date_range),
                                    onPressed: () async {
                                      date = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2030),
                                        locale: Locale("pt", "BR"),
                                      );
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Adicionar Alimento",
                                style: TextStyle(
                                  color: AppColors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      this.mealsSelected.add(meals[0]);
                                      this.foodsSelected.add(foods[0]);
                                      print("mealsSelected: $mealsSelected");
                                      print("foods sele: $foodsSelected");
                                      print("meals wid: $mealsWidget");
                                      this.mealsWidget.add(
                                            fiels(
                                              index:
                                                  this.mealsSelected.length - 1,
                                            ),
                                          );
                                      print("meals wid: $mealsWidget");
                                    },
                                  );
                                },
                                child: Container(
                                  height: deviceSize.height * 0.05,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.defaultBlue,
                                  ),
                                  padding:
                                      EdgeInsets.all(deviceSize.width * 0.005),
                                  child: SvgPicture.asset(
                                    AppVectors.addFilledIcon,
                                    color: AppColors.white,
                                  ),
                                ),
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
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget fiels({required int index}) {
    Size deviceSize = MediaQuery.of(context).size;
    String foodChanged = "";
    String mealChanged = "";
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Refeição',
              textAlign: TextAlign.start,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: deviceSize.width * 0.2,
                  child: DropdownButton(
                    value: mealsSelected[index],
                    isExpanded: true,
                    // onChanged: (v) {
                    //   setState(() {
                    //     mealChanged = v.toString();
                    //     mealsSelected[index] = v.toString();
                    //   });
                    // },
                    items: [
                      DropdownMenuItem(
                        value: meals[0],
                        child: Text(
                          meals[0],
                        ),
                        onTap: () {
                          setState(() {
                            print("meal changed: $mealChanged");
                            mealsSelected[index] = meals[0];
                          });
                        },
                      ),
                      DropdownMenuItem(
                        value: meals[1],
                        child: Text(
                          meals[1],
                        ),
                        onTap: () {
                          setState(() {
                            print("meal changed: $mealChanged");
                            mealsSelected[index] = meals[1];
                          });
                        },
                      ),
                      DropdownMenuItem(
                        value: meals[2],
                        child: Text(
                          meals[2],
                        ),
                        onTap: () {
                          setState(() {
                            print("meal changed: $mealChanged");
                            mealsSelected[index] = meals[2];
                          });
                        },
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.info_outline),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alimento'),
            Row(
              children: [
                Container(
                  width: deviceSize.width * 0.2,
                  child: DropdownButton(
                    value: foodsSelected[index],
                    isExpanded: true,
                    onChanged: (v) {
                      setState(() {
                        print("\n foods: $v");
                        foodsSelected[index] = v.toString();
                      });
                    },
                    items: foods
                        .map((food) => DropdownMenuItem(
                              value: food,
                              child: Text(
                                food,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                IconButton(icon: Icon(Icons.info_outline), onPressed: () {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
