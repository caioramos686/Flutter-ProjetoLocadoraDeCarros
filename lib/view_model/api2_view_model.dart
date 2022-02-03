import 'package:dio/dio.dart';
import 'package:locadora_carros/models/api2_model.dart';

class ApiRepository {
  final dio = Dio();
  final url = "http://34.176.203.169/cfo/35000001101012017235903031300000009";

  Future<List<Api2Model>> ListUrl() async {
    final response = await dio.get(url);
    final list = response.data;
    return list.map((postMap) => Api2Model.fromJson(postMap)).toList();
  }

}