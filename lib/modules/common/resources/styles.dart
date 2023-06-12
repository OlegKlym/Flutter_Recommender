import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class Styles {
  static const TextStyle logoLabelStyle = TextStyle(
    color: AppColors.lightTextColor,
    fontFamily: 'Woodkit',
    fontSize: 25,
  );

  static TextStyle titleLabelStyle = const TextStyle(
    color: AppColors.lightTextColor,
    fontFamily: 'Forza-BlackItalic',
    fontSize: 24,
  );

  final double responsiveFontSize = ScreenUtil().setSp(titleLabelStyle.fontSize as num);

  static InputDecoration defaultEntryStyle = const InputDecoration(
    filled: true,
    fillColor: AppColors.entryBackgroundColor,
    hintStyle: TextStyle(color: AppColors.entryTextColor),
    labelStyle: TextStyle(color: AppColors.entryTextColor),
    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide.none,
    ),
  );

  static ButtonStyle confirmButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.confirmButtonBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(22),
    ),
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    minimumSize: const Size(double.infinity, 60),
  );

  static const TextStyle linkLabelStyle = TextStyle(
    backgroundColor: AppColors.transparentColor,
    fontSize: 16,
    color: AppColors.lightTextColor,
    fontFamily: 'Bookos',
    decoration: TextDecoration.underline,
  );

  final entryFrameDecoration = BoxDecoration(
    color: AppColors.entryBackgroundColor,
    borderRadius: BorderRadius.circular(8),
  );
}
