import 'package:flutter/material.dart';
import 'package:learn_testing/app.dart';
import 'package:flutter_test/flutter_test.dart';

/*
About Integration Testing:
Integration testing is a type of software testing where components of the software
are gradually integrated and then tested as a unified group. Usually these components are already
working well individually, but they may break when integrated with other components.
"With integration testing, We can find defects that surface due to code conflicts between software modules
when they are integrated with each other.
 */

void main() {
  testWidgets('tap on the floating action button, verify counter',
      (tester) async {
    // Load app widget.
    await tester.pumpWidget(const MyApp());

    // Verify the counter starts at 0.
    expect(find.text('0'), findsOneWidget);

    // Finds the floating action button to tap on.
    final inc = find.byKey(const Key('increment'));

    // Emulate a tap on the floating action button.

    for (int i = 1; i < 6; i++) {
      await tester.tap(inc);
    }

    // Trigger a frame.
    await tester.pumpAndSettle();

    // Verify the counter increments by 1.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
