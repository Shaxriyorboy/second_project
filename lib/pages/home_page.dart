import 'package:flutter/material.dart';
import 'package:mydemo4/pages/login_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String str = 'Hello pdp';

  Future _onpenLogin()async{
    Map result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LoginPage(name: "Flutter",age: 22);
        },
      ),
    );
    if(result.containsKey('name')){
      str = result['name'];
    }else if(result.containsKey('age')){
      str = '${result['age']}';
    }else if(result.containsKey('name') && result.containsKey('age')){
      str = '${result['name']},${result['age']}';
    }else{
      str = 'salom';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome home page'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            _onpenLogin();
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(str),
        ),
      ),
    );
  }
}
