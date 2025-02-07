import '../../../constants/app_linker/app_linker.dart';

class OnboardingHeaderWidget extends StatelessWidget {
  final OnboardingController onboardingController =
      Get.put(OnboardingController());
  OnboardingHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: onboardingController.changeIndex,
        controller: PageController(),
        itemCount: onboardingController.onboardingPages.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(color: AppColors().secondaryColor3),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    onboardingController.onboardingPages[index].imagePath,
                    height: 256,
                    width: 256,
                  ),
                  Text(
                    onboardingController.onboardingPages[index].title,
                    style: AppStyle.headingStyle2,
                  ),
                  Text(
                    onboardingController.onboardingPages[index].description,
                    style: AppStyle.subHeadingStyle2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
