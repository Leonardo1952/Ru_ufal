import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ru_ufal/core/app_colors.dart';

//Criação dos Tiles do drawer de forma Orientada a Objetos
class DrawerTile extends StatelessWidget {
  final String imageUrl;
  final String text;
  final PageController controller;
  final int page;

  DrawerTile({
    required this.imageUrl,
    required this.text,
    required this.controller,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    double currentPage = controller.page ?? 0.0;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: deviceSize.height * 0.02,
      ),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).pop(); //Fechar o drawer
          controller.jumpToPage(page); //Mudar de pagina ao clicar
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceSize.width * 0.01,
          ),
          child: Row(
            children: <Widget>[
              SvgPicture.asset(
                imageUrl,
                height: deviceSize.height * 0.05,
                color: controller.hasClients
                    ? (currentPage.round() == page
                        ? AppColors.defaultRed
                        : AppColors.white)
                    : AppColors.white,
              ),
              SizedBox(
                width: deviceSize.width * 0.01,
              ), //Espaço entre icone e texto
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: controller.hasClients
                        ? (currentPage.round() == page
                            ? AppColors.defaultRed
                            : AppColors.white)
                        : AppColors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
