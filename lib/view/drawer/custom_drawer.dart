import 'package:flutter/material.dart';
import 'package:ru_ufal/core/app_vectors.dart';
import 'package:ru_ufal/core/internacionalization/app_translate.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/Tiles/drawer_tile.dart';
/*
class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.primaryAzul,
        child: ListView(
          padding: EdgeInsets.only(left: 32.0, top: 10.0),
          children: <Widget>[
            DrawerHeader(
              child: Row(children: [
                Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 90,
                      color: AppColors.primaryAzul,
                      child: Image.asset(
                        AppVectores.logo,
                        height: 90,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            DrawerTile(
                AppVectores.garfo, "Cadastrar Alimento", pageController, 0),
          ],
        ),
      ),
    );
  }
}
*/
