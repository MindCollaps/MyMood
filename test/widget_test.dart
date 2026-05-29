import 'package:flutter_test/flutter_test.dart';

import 'package:my_mood/app/app.dart';

void main() {
  testWidgets('renders the start screen', (WidgetTester tester) async {
    await tester.pumpWidget(const EineApp());

    expect(find.text('Hallo Welt'), findsOneWidget);
    expect(find.text('Button'), findsOneWidget);
  });
}
