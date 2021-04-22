import 'package:flutter/material.dart';
import 'package:twitter_clone/services/auth.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          FlatButton.icon(
            label: Text('SignOut'),
            icon: Icon(Icons.person),
            onPressed: () async {
              _authService.signOut();
            },
          )
        ],
      ),
    );
  }
}
