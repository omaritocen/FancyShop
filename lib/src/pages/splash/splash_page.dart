import 'package:flutter/material.dart';
import 'package:shop/src/core/values/constants.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('This is the splash screen')),
          SizedBox(height: 50),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
