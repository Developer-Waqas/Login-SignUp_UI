import '../../constants/app_linker/app_linker.dart';

PageController pageController = PageController();

class OnboardingController extends GetxController {
  // Selected Page Index
  var selectedPageIndex = 0.obs;

  // Change Index Method
  void changeIndex(int newIndex) {
    selectedPageIndex.value = newIndex;
  }

  // Onboarding Page List
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
