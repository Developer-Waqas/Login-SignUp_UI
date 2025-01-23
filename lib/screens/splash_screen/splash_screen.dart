import 'package:flutter/material.dart';
import 'package:login_signup_ui/constants/app_color/app_color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Waqas'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
    );
  }
}
