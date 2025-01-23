import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Waqas'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
