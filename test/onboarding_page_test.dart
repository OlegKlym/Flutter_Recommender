import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recommender_flutter/modules/common/pages/basePage.dart';
import 'package:recommender_flutter/modules/common/pages/onboardingPage.dart';

void main() {
  group('OnboardingPage Widget', () {
    Widget buildTestableWidget(Widget widget) {
      return MaterialApp(home: widget);
    }

    testWidgets('Should navigate to loginPage when Continue button is pressed',
            (WidgetTester tester) async {
          await tester.pumpWidget(buildTestableWidget(const OnboardingPage()));
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
          expect(find.byType(BasePage), findsOneWidget); // Assuming BasePage is the next screen after navigating to /login
        });

    testWidgets('Should have correct text in Continue button', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(const OnboardingPage()));
      final buttonText = tester.widget<Text>(find.descendant(
          of: find.byType(ElevatedButton),
          matching: find.byType(Text)
      ));
      expect(buttonText.data, 'Continue'); // Replace with the expected text of the button
    });
  });
}