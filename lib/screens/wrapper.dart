import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone/auth/sign_up.dart';
import 'package:twitter_clone/main/home.dart';
import 'package:twitter_clone/models/user.dart';
import 'package:twitter_clone/posts/add.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel> (context);

    print(user);
    if (user == null) {
      //show auth system routes
      return SignUp();
    }
    // show main system routes
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
        '/add' : (context) => Add()
      }
    );
    return Home();
  }
}
