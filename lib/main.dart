import 'package:flutter/material.dart';
import 'package:mydemo4/pages/home_page.dart';
import 'package:mydemo4/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(name: '',age: 0,),
      },
    );
  }
}

