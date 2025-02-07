import '../../constants/app_linker/app_linker.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              primaryGradColor,
              secondaryGradColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImageAssets.splashImage,
              height: 79,
              width: 79,
            ),
            Center(
              child: Text(
                AppString.splashTitle,
                style: AppStyle.headingStyle1,
              ),
            ),
            Text(
              AppString.splashSubTitle,
              style: AppStyle.subHeadingStyle1,
            )
          ],
        ),
      ),
    );
  }
}
