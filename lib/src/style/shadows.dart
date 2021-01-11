import 'package:flutter/cupertino.dart';
import 'package:grocery_store_ux/src/style/colors.dart';

class AppShadows {
  AppShadows._();

  static List<BoxShadow> categoryCardShadow = List.of([
    BoxShadow(
      color: AppColors.pastelGreen15,
      offset: Offset(0, 10),
      blurRadius: 10,
    )
  ]);
}
