import '../../../constants/app_linker/app_linker.dart';

class OnboardingBodyWidget extends StatelessWidget {
  final OnboardingController onboardingController =
      Get.put(OnboardingController());
  OnboardingBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 465,
      left: 145,
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            onboardingController.onboardingPages.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == onboardingController.selectedPageIndex.value
                    ? AppColors().primaryColor
                    : AppColors().greyColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
