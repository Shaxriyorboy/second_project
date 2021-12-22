import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";
  String name;
  int age;

  LoginPage({required this.name,required this.age});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Login page'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.of(context).pop({'name':'Dart','age':33});
          },
          child: Text('${widget.name},${widget.age}'),
          color: Colors.blue,
          textColor: Colors.white,
        ),

      ),
    );
  }
}
