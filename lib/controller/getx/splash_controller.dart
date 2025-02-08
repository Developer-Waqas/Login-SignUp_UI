import '../../constants/app_linker/app_linker.dart';

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
