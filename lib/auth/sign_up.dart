
import 'package:flutter/material.dart';
import 'package:twitter_clone/services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _authService = AuthService();

  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 8,
        title: Text("Sign Up"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                onChanged: (val) => setState((){
                  email = val;
                }
                ),
              ),
              TextFormField(
                onChanged: (val) => setState((){
                  password = val;
                }
                ),
              ),
              RaisedButton(
                child: Text('Sign Up'),
                  onPressed: () async => {
                  _authService.signUp(email, password)
                  }
              ),
              RaisedButton(
                  child: Text('Sign In'),
                  onPressed: () async => {
                    _authService.signIn(email, password)
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
