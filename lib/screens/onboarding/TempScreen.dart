import 'package:flutter/material.dart';

class TempScreen extends StatelessWidget {
  final String content;

  TempScreen(this.content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(content),
      ),
    );
  }
}
