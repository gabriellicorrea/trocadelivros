import 'package:flutter/material.dart';
import 'package:trocadelivros/login.dart';

import 'cadastro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Cadastro(),
    );
  }
}
