import 'package:flutter/material.dart';
import 'package:sportcity/utils/firebase_auth.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() { 
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
     body: Container(
        decoration: BoxDecoration(
          image: (
             DecorationImage(
              image: NetworkImage('https://talka.ru/upload/iblock/d89/img_4243.jpg'),
              fit: BoxFit.cover 
            )
          ),
        ),
        child: Center(
          child:RaisedButton(
                child: Text("Login with Google"),
                onPressed: () async {
                  bool res = await AuthProvider().loginWithGoogle();
                  if(!res)
                    print("error logging in with google");
                },
              ),
        )
      ),
    );
  }
}

/* 
RaisedButton(
                child: Text("Login with Google"),
                onPressed: () async {
                  bool res = await AuthProvider().loginWithGoogle();
                  if(!res)
                    print("error logging in with google");
                },
              ),
*/