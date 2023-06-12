import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/styles.dart';

class LogoBanner extends StatelessWidget {
  final String logoSource;
  final String logoText;

  const LogoBanner({super.key, required this.logoText, required this.logoSource});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 1.0),
            ),
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 0.75,
              child: SvgPicture.asset(
                logoSource,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              logoText,
              style: Styles.logoLabelStyle,
            ),
          ),
        ],
      ),
    );
  }
}