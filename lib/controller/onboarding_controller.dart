import '../constants/app_linker/app_linker.dart';

class OnboardingController extends GetxController {
  List<OnboardingModel> onboardingPages = [
    OnboardingModel(
      AppImageAssets.onboardingImage1,
      AppString.onboardingTitle1,
      AppString.onboardingSubTitle1,
    ),
    OnboardingModel(
      AppImageAssets.onboardingImage2,
      AppString.onboardingTitle2,
      AppString.onboardingSubTitle2,
    ),
    OnboardingModel(
      AppImageAssets.onboardingImage3,
      AppString.onboardingTitle3,
      AppString.onboardingSubTitle3,
    ),
  ];
}
