import 'package:flutter_test/flutter_test.dart';
import 'package:locadora_carros/view_model/api_enum_view_model.dart';

main() {
  final controller = ApiController();

  test("deve preencher variavel todos", () async {
    print(controller.start());
    expect(controller.state, HomeState.loading);
    await controller.start();
    expect(controller.state, HomeState.sucess);
    expect(controller.todos.isNotEmpty, true);
  });
}
