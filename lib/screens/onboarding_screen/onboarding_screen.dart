import 'package:login_signup_ui/screens/onboarding_screen/widgets/onboarding_body_widget.dart';

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
        OnboardingBodyWidget(),
        SizedBox(height: 50),
        OnboardingFooterWidget()
      ],
    );
  }
}
