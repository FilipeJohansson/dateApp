import 'package:date_app/values/strings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:date_app/main.dart';

void main() {
  testWidgets('Screen build smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(App());

    expect(find.text(Strings.signIn), findsOneWidget);
    expect(find.text(Strings.signUp), findsOneWidget);
  });
}
