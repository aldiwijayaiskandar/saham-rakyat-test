import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_saham_rakyat/presentation/views/home/widgets/home_title.dart';

void main() {
  _pumpTestWidget(WidgetTester tester, HomeTitle widget) =>
      tester.pumpWidget(MaterialApp(
        home: Container(
          alignment: Alignment.center,
          child: widget,
        ),
      ));

  testWidgets("Display Menu Greeting Title", (WidgetTester tester) async {
    await _pumpTestWidget(tester, const HomeTitle());

    expect(find.text("Finds Good Food Around You"), findsOneWidget);
  });
}
