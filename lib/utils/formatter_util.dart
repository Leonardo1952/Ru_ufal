import 'package:flutter/material.dart';

class FormatterUtil {
  /// Retorna a data formatada como: 31 de maio
  static String dateFormatter(BuildContext context, DateTime dateTime) {
    Map<int, String> ptMonths = {
      1: "Janeiro",
      2: "Fevereiro",
      3: "Março",
      4: "Abril",
      5: "Maio",
      6: "Junho",
      7: "Julho",
      8: "Agosto",
      9: "Setembro",
      10: "Outubro",
      11: "Novembro",
      12: "Dezembro",
    };

    return "${dateTime.day} de ${ptMonths[dateTime.month]}";
  }
}
