import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController onboardingController =
      Get.put(OnboardingController());
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: onboardingController.onboardingPages.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                Image.asset(
                  onboardingController.onboardingPages[index].imagePath,
                  height: 256,
                  width: 256,
                ),
                Text(
                  onboardingController.onboardingPages[index].title,
                  style: AppStyle.headingStyle1,
                ),
                Text(
                  onboardingController.onboardingPages[index].description,
                  style: AppStyle.subHeadingStyle1,
                ),
              ],
            ),
          );
        });
  }
}
