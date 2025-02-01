

import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
        child: Column(
          spacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Center(
                child: Image(
                  alignment: Alignment.center,
                  image: AssetImage(onboardingImage1),
                  height: 256,
                  width: 256,
                ),
              ),
            ),
            Text(
              'Best Prices & Deals',
              style: TextStyle(
                  fontFamily: 'InterBold',
                  fontSize: 25,
                  color: Color(0xffFF800B)),
            ),
            Text(
              'Find your favorite Meals at the best prices with exclusive deals only on aliments app.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'InterRegular',
                color: Color(0xff595959),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
