import 'package:flutter/material.dart';
import 'package:twitter_clone/services/posts.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final PostService _postService = PostService();
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Tweet'),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
              onPressed: () async {
                _postService.savePost(text);
                Navigator.pop(context);
              },
              child: Text('Tweet'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Form(
          child: TextFormField(
            onChanged: (val) {
              setState(() {
                text = val;
              });
            },
          ),
        ),
      ),
    );
  }
}
