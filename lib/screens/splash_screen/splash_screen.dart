import 'package:flutter/material.dart';
import 'package:login_signup_ui/constants/app_color/app_color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [primaryGradColor, secondaryGradColor],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/img_splash_img.png'),
            scale: 3
          ),
        ),
      ),
    );
  }
}
