// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ru_ufal/core/app_colors.dart';

// //Criação dos Tiles do drawer de forma Orientada a Objetos
// class DrawerTile extends StatelessWidget {
//   final String img;
//   final String text;
//   // final PageController controller;
//   // final int page;

//   DrawerTile({
//     this.img,
//     this.text,
//     // this.controller,
//     // this.page,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         onTap: () {
//           // Navigator.of(context).pop();
//           // controller.jumpToPage(page); //Mudar de pagina ao clicar
//         },
//         child: Container(
//           height: 60.0,
//           child: Row(
//             children: <Widget>[
//               SvgPicture.asset(
//                 img,
//                 height: 34.0,
//                 color: controller.page.round() == page
//                     ? AppColors.vermelho
//                     : AppColors.branco,
//               ),

//               Container(
//                 height: 32.0,
//                 color: controller.page.round() == page
//                     ? AppColors.vermelho
//                     : AppColors.branco,
//               ),

//               SizedBox(
//                 width: 32.0,
//               ), //Espaço entre icone e texto
//               Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: 16.0,
//                   color: controller.page.round() == page
//                       ? AppColors.vermelho
//                       : AppColors.branco,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
