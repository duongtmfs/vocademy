import 'package:flutter_test/flutter_test.dart';
import 'package:vocademy/app/app.dart';

void main() {
  testWidgets('starts on splash and opens language picker', (tester) async {
    await tester.pumpWidget(const VocademyApp());

    expect(find.text('Vocademy'), findsOneWidget);
    expect(find.text('Start'), findsOneWidget);

    await tester.tap(find.text('Start'));
    await tester.pumpAndSettle();

    expect(find.text('Choose your Native Language'), findsOneWidget);
    expect(find.text('Tiếng Việt'), findsOneWidget);
    expect(find.text('Arabic'), findsOneWidget);
  });
}
