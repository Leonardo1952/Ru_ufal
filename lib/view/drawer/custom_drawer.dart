import 'package:flutter/material.dart';
import 'package:ru_ufal/core/app_images.dart';
import 'package:ru_ufal/core/app_vectors.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width * 0.2,
      height: deviceSize.height,
      color: AppColors.defaultBlue,
      child: Column(
        children: <Widget>[
          Center(
            child: InkWell(
              onTap: () {
                // Navigator.of(context).pop();
              },
              child: Container(
                // color: Colors.transparent,
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.logo,
                      width: deviceSize.width * 0.1,
                      // height: deviceSize.height * 0.05,
                    ),
                    Text(
                      'RU UFAL',
                      style: TextStyle(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DrawerTile(
                  imageUrl: AppVectors.forkOutlineIcon,
                  text: "Cadastrar Alimento",
                  controller: this.pageController,
                  page: 0,
                ),
                DrawerTile(
                  imageUrl: AppVectors.menuFilledIcon,
                  text: "Cadastrar cardápio",
                  controller: this.pageController,
                  page: 1,
                ),
                DrawerTile(
                  imageUrl: AppVectors.menuListFilledIcon,
                  text: "Listar menu",
                  controller: this.pageController,
                  page: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
