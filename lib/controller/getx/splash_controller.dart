import 'dart:async';

import 'package:get/get.dart';
import 'package:login_signup_ui/screens/onboarding_screen/onboarding_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToOnboarding();
  }

  void navigateToOnboarding() {
    Timer(Duration(seconds: 3),
        () => Get.off(OnboardingScreen(), transition: Transition.fadeIn));
  }
}
