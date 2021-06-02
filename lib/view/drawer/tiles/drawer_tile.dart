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
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop(); //Fechar o drawer
          controller.jumpToPage(page); //Mudar de pagina ao clicar
        },
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              SvgPicture.asset(
                imageUrl,
                height: 34.0,
                color: (controller.hasClients
                        ? true
                        : controller.page!.round() == page)
                    ? AppColors.defaultRed
                    : AppColors.white,
              ),

              Container(
                height: 32.0,
                color: (controller.hasClients
                        ? true
                        : controller.page!.round() == page)
                    ? AppColors.defaultRed
                    : AppColors.white,
              ),

              SizedBox(
                width: 32.0,
              ), //Espaço entre icone e texto
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: (controller.hasClients
                          ? true
                          : controller.page!.round() == page)
                      ? AppColors.defaultRed
                      : AppColors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
