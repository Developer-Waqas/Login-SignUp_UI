import 'package:login_signup_ui/screens/onboarding_screen/widgets/onboarding_footer_widget.dart';
import 'package:login_signup_ui/screens/onboarding_screen/widgets/onboarding_header_widget.dart';

import '../../constants/app_linker/app_linker.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingHeaderWidget(),
        Positioned(bottom: 0, child: OnboardingFooterWidget()),
      ],
    );
  }
}
