import '../../../constants/app_linker/app_linker.dart';

class OnboardingFooterWidget extends StatelessWidget {
  const OnboardingFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
