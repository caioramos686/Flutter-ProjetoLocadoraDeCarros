import 'package:flutter/material.dart';
import 'package:locadora_carros/view_model/api2_enum_view_model.dart';

class Api2View extends StatefulWidget {
  @override
  State<Api2View> createState() => _ApiViewState();
}

class _ApiViewState extends State<Api2View> {
  final controller = Api2Controller();

  _sucess() {
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (context, index) {
        var todo = controller.todos[index];
        return ListTile(
          leading: Checkbox(
            value: todo.flagPragaEspecifica,
            onChanged: (bool? value) {},
          ),
          title: Text(todo.rtEmitenteNome.toString()),
        );
      },
    );
  }

  _error() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          controller.start();
        },
        child: Text("Tente novamente"),
      ),
    );
  }

  _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  _start() {
    return Container();
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _error();
      case HomeState.sucess:
        return _sucess();
      default:
        return _start();
    }
  }

  @override
  void initState() {
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listando API2 externa"),
        actions: [
          IconButton(onPressed: (){
            controller.start();
          }, icon: Icon(Icons.refresh_outlined),)
        ],
      ),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return stateManagement(controller.state.value);
        },
      ),
    );
  }
}
