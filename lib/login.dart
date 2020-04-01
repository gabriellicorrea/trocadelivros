import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final textFieldEmailUsuario = TextEditingController();
  final textFieldSenhaUsuario = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      autofocus: true,
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
        ),
        hintText: "Email",
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: textFieldEmailUsuario,
    );

    final senhaField = TextField(
      autofocus: true,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_outline),
        hintText: "Password",
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: textFieldSenhaUsuario,
    );

    final buttonLogin = ButtonTheme(
      height: 40.0,
      child: RaisedButton(
        onPressed: () => {print("usuario logado")},
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0)),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(0),
          color: Colors.white,
          padding: const EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 130,
                child: Image.asset("imagens/person.png", fit: BoxFit.contain),
              ),
              SizedBox(height: 40),
              emailField,
              SizedBox(height: 20),
              senhaField,
              SizedBox(height: 30),
              buttonLogin,
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print(textFieldEmailUsuario.text);
      //     print(textFieldSenhaUsuario.text);
      //     return showDialog(
      //       context: context,
      //       builder: (context) {
      //         return AlertDialog(
      //           content: Text("Usuario cadastrado com sucesso!"),
      //         );
      //       },
      //     );
      //   },
      //   child: Icon(Icons.check),
      // ),
    );
  }
}
