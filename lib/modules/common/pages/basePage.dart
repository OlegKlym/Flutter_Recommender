import 'package:flutter/material.dart';

import '../resources/colors.dart';

class BasePage extends StatelessWidget {
  final Widget pageContent;

  const BasePage({Key? key, required this.pageContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: AppColors.pageBackgroundColor,
      ),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.pageBackgroundColor,
                AppColors.lightPageBackgroundColor,
              ],
              stops: [0.1, 1.0],
            ),
          ),
          child: SafeArea(
            child: pageContent,
          ),
        ),
      ),
    );
  }
}