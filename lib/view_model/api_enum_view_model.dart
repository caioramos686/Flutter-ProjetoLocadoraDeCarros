import 'package:flutter/cupertino.dart';
import 'package:locadora_carros/models/api_model.dart';
import 'package:locadora_carros/view_model/api_view_model.dart';

class ApiController {
  final repository = ApiRepository();
  List<ApiModel> todos = [];
  final state = ValueNotifier<HomeState>(HomeState.start);

  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await repository.fetchTodos();
      state.value = HomeState.sucess;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, sucess, error }
