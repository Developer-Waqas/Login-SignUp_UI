import 'package:login_signup_ui/widgets/custom_button/custom_button.dart';

import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController onboardingController =
      Get.put(OnboardingController());
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
            onPageChanged: onboardingController.changeIndex,
            controller: PageController(),
            itemCount: onboardingController.onboardingPages.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
            }),
        Positioned(
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
        ),
        SizedBox(
          height: 50,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 267,
            width: 428,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  AppColors().primaryGradColor,
                  AppColors().secondaryGradColor,
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: () {},
                  text: 'Login',
                  height: 57,
                  width: 300,
                  color: Colors.white,
                  textStyle: AppStyle.buttonStyle1,
                  borderRadius: BorderRadius.circular(15),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: () {},
                  text: 'Create an account',
                  height: 57,
                  width: 300,
                  color: Colors.black,
                  textStyle: AppStyle.buttonStyle2,
                  borderRadius: BorderRadius.circular(15),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
