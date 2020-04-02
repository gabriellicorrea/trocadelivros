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
        labelStyle: TextStyle(color: Colors.red),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
      controller: textFieldSenhaUsuario,
    );

    final buttonLogin = ButtonTheme(
      child: Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  child: SizedBox(
                    child: Image.asset("imagens/icon.jpg"),
                    height: 28,
                    width: 28,
                  ),
                ),
              ],
            ),
            onPressed: () => {},
          ),
        ),
      ),
    );

    final fbLogin = ButtonTheme(
      child: Container(
        height: 60,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Color(0xFF3C5A99),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Login com Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  child: SizedBox(
                    child: Image.asset("imagens/face.png"),
                    height: 28,
                    width: 28,
                  ),
                ),
              ],
            ),
            onPressed: () => {},
          ),
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
                height: 128,
                width: 128,
                child: Image.asset("imagens/person.png", fit: BoxFit.contain),
              ),
              SizedBox(height: 40),
              emailField,
              SizedBox(height: 20),
              senhaField,
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    "Recuperar Senha",
                    textAlign: TextAlign.right,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buttonLogin,
              SizedBox(
                height: 30,
              ),
              fbLogin,
              SizedBox(
                height: 30,
              ),
              Container(
                child: FlatButton(
                  child: Text(
                    "Cadastre-se",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
