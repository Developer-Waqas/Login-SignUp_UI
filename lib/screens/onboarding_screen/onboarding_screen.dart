import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final OnboardingController onboardingController =
      Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingHeaderWidget(),
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
            child: Stack(
              children: [
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: CustomButton(
                    onPressed: () {},
                    text: 'Login',
                    height: 57,
                    width: 300,
                    color: AppColors().secondaryColor3,
                    textStyle: AppStyle.buttonStyle1,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  bottom: 80,
                  left: 30,
                  child: CustomButton(
                    onPressed: () {},
                    text: 'Create an account',
                    height: 57,
                    width: 300,
                    color: Colors.black,
                    textStyle: AppStyle.buttonStyle2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
