import 'package:flutter/material.dart';
import 'package:locadora_carros/view/dashboard.dart';


void main() {
  runApp(LocadoraCarros());
}

class LocadoraCarros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Dashboard(),
    );
  }
}
