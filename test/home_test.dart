import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:date_app/main.dart';

void main() {
  testWidgets('Screen build smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(App());

    expect(find.text('ENTRAR'), findsOneWidget);
    expect(find.text('REGISTRAR'), findsOneWidget);
  });
}
