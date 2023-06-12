import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../pages/basePage.dart';
import '../resources/styles.dart';
import '../widgets/logoBanner.dart';
import '../widgets/videoPlayerWidget.dart';

class OnboardingPage extends StatelessWidget {
  static const String introVideoUrl = 'assets/videos/video1597151024.mp4';
  static const String appLogoSource = 'assets/images/logo.svg';

  const OnboardingPage({super.key});

  void onContinueButtonPressed(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageContent: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: LogoBanner(
                  logoText: AppLocalization.of(context).logo,
                  logoSource: appLogoSource,
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: VideoPlayerWidget(
                    videoUrl: introVideoUrl,
                    enableAutoPlay: true,
                    isLooping: true,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () => onContinueButtonPressed(context),
                  style: Styles.confirmButtonStyle,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      AppLocalization.of(context).onboardingContinue,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}