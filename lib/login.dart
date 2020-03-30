import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final textFieldNomeUsuario = TextEditingController();
  final textFieldSenhaUsuario = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text('Troca de Livros'),
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        title: Text("Troca de Livros"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nome do usuário",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                controller: textFieldNomeUsuario,
              ),
              TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Senha do usuário",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                controller: textFieldSenhaUsuario,
              ),
            ]),
      ),
      backgroundColor: Colors.lightBlue[50],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(textFieldNomeUsuario.text);
          print(textFieldSenhaUsuario.text);
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Usuario cadastrado com sucesso!"),
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
