import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer_efffect_package_by_ziyodulla/shimmer_efffect_package_by_ziyodulla.dart';

void main() {
  testWidgets('ShimmerContainer applies shimmer effect',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ShimmerContainer(
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
        ),
      ),
    );

    // Verify that the widget is present in the widget tree
    expect(find.byType(ShimmerContainer), findsOneWidget);
  });
}
