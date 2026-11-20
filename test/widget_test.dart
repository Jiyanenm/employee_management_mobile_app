import 'package:flutter_test/flutter_test.dart';
import 'package:employee_management_app/main.dart';

void main() {
  testWidgets('Employee Management app launches successfully',
      (WidgetTester tester) async {
    await tester.pumpWidget(const EmployeeManagementApp());

    expect(find.text('Employee Management App'), findsOneWidget);
  });
}
