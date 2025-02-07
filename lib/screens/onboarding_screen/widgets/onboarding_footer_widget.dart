import '../../../constants/app_linker/app_linker.dart';

class OnboardingFooterWidget extends StatelessWidget {
  final OnboardingController onboardingController =
      Get.put(OnboardingController());
  OnboardingFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
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
        Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
      ],
    );
  }
}
