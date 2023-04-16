// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nock/nock.dart';
import 'package:sust_app/routes/management/department/department.dart';

void main() {
  setUpAll(nock.init);

  setUp(() {
    nock.cleanAll();
  });
  testWidgets('Department page navigation test', (WidgetTester tester) async {
    await tester.pumpWidget(const FluentApp(home: Department()));
    // Verify that our counter starts at 0.
    expect(find.widgetWithText(PageHeader, 'Departments'), findsOneWidget);
    expect(find.widgetWithText(PageHeader, 'Departments > Add department'),
        findsNothing);
    await tester.pump(const Duration(seconds: 2));
    await tester.tap(find.byType(GestureDetector).first);
    await tester.pump(const Duration(seconds: 2));
    expect(find.widgetWithText(PageHeader, 'Departments'), findsOneWidget);
    expect(find.widgetWithText(PageHeader, 'Departments > Add department'),
        findsNothing);

    expect(find.byIcon(FluentIcons.add), findsOneWidget);
    // expect(find.byType(FutureBuilder), findsWidgets);
    await tester.tap(find.byIcon(FluentIcons.add));
    await tester.pump(const Duration(seconds: 2));
    expect(find.widgetWithText(PageHeader, 'Departments > Add department'),
        findsOneWidget);
    expect(find.widgetWithText(PageHeader, 'Departments'), findsNothing);

    await tester.tap(find.byType(GestureDetector).first);
    await tester.pump(const Duration(seconds: 2));
    expect(find.widgetWithText(PageHeader, 'Departments'), findsOneWidget);
    expect(find.widgetWithText(PageHeader, 'Departments > Add department'),
        findsNothing);

    await tester.pump(const Duration(seconds: 2));
  });
}
