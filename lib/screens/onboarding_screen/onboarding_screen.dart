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
          top: 500,
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
        )
      ],
    );
  }
}
