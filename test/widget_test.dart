// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:widget_layout/main.dart';

void main() {
  testWidgets('student profile app renders the expected layout', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Student Profile'), findsWidgets);
    expect(find.text('Welcome to Flutter'), findsOneWidget);
    expect(find.text('Edwin Paul'), findsOneWidget);
    expect(find.text('Computer Science and Engineering'), findsOneWidget);
    expect(find.text('Flutter Laboratory'), findsOneWidget);
  });
}
