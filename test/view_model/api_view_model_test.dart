import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locadora_carros/view_model/api_view_model.dart';

main(){
  final repository = ApiRepository();

  test("Deve trazer uma lista de ApiModel", () async {

    final list = await repository.fetchTodos();
    print(list);

  });
}
