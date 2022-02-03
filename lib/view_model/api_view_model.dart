import 'package:dio/dio.dart';
import 'package:locadora_carros/models/api_model.dart';

class ApiRepository {
  final dio = Dio();
  final url = "https://jsonplaceholder.typicode.com/todos";


  Future<List<ApiModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => ApiModel.fromJson(json)).toList();
  }

}