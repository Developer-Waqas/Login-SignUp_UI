

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
            colors: [primaryGradColor, secondaryGradColor],
          ),
          image: DecorationImage(
              image: AssetImage('assets/images/img_splash_img.png'), scale: 3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                'aliments',
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  color: Colors.white,
                  fontSize: 35
                ),
              ),
            ),
            Text('Food Delivery Services',style: TextStyle(
              fontSize: 16,
              fontFamily: 'PoppinsRegular',
              color: Colors.white,
            ),),
          ],
        ),
      ),
    );
  }
}
