import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone/auth/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:twitter_clone/models/user.dart';
import 'package:twitter_clone/screens/wrapper.dart';
import 'package:twitter_clone/services/auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          //return SomethingWentWrong();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return StreamProvider<UserModel>.value(
            value: AuthService().user,
            child: MaterialApp(
            home : Wrapper()),
          );
        }
        return Text("Loading");
      },
    );
  }
}
