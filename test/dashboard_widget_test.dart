import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locadora_carros/view/dashboard.dart';

void main() {
  //Teste da imagem
  testWidgets("Should display the main image when the Dashboard is opended",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final mainImage = find.byType(Image);
    expect(mainImage, findsOneWidget);
  });

  //Teste dos Carros Disponiveis
  testWidgets("Should display the first feature when the Dashboard is opended",
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard(),));
    final firsFeature = find.byType(Faq);
    expect(firsFeature, findsOneWidget);
      });

}
