import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/HomeScreen');
            // 클릭하면 첫 번째 화면으로 돌아갑니다!
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}