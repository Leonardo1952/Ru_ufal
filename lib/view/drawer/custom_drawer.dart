import 'package:flutter/material.dart';
import 'package:ru_ufal/core/app_vectors.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/tiles/drawer_tile.dart';

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
              child: Row(
                children: [
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 90,
                        color: AppColors.primaryAzul,
                        child: Image.asset(
                          AppVectors.logo,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DrawerTile(
              imageUrl: AppVectors.garfo,
              text: "Cadastrar Alimento",
              controller: this.pageController,
              page: 0,
            ),
          ],
        ),
      ),
    );
  }
}
