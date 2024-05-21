import 'package:coffeeshopui/CommonWidget/OurButton.dart';
import 'package:coffeeshopui/const/const.dart';
import '../CommonWidget/BottomNavBar.dart';
import '../HomeScreen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assest/images/bg.png'),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            coffee.text.white.size(50).fontFamily(regular2).make(),
            Column(
              children: [
                feeling.text.size(16).letterSpacing(1).white.make(),
                30.heightBox,
                SizedBox(
                  width: context.screenWidth - 180,
                  child: CommonButton(
                      title: "Get Started",
                      textcolor: whitecolor,
                      onpress: () {
                        Get.to(() => NavBar());
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
