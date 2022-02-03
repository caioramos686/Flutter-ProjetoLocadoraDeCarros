import 'package:flutter/cupertino.dart';
import 'package:locadora_carros/models/api2_model.dart';
import 'package:locadora_carros/view_model/api2_view_model.dart';

class Api2Controller {
  final repository = ApiRepository();
  List<Api2Model> todos = [];
  final state = ValueNotifier<HomeState>(HomeState.start);

  Future  start() async {
    state.value = HomeState.loading;
      todos = await repository.ListUrl();
      state.value = HomeState.sucess;

  }
}

enum HomeState { start, loading, sucess, error }
