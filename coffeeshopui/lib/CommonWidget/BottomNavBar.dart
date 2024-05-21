import 'dart:ffi';

import 'package:coffeeshopui/HomeScreen/HomeScreen.dart';
import 'package:coffeeshopui/const/const.dart';

import '../Screens/FavoritesScreen.dart';
import '../Screens/Notification.dart';
import '../Screens/profile.dart';
import '../controller/HomeController.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var naviteam = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorite",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: "Notification",
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded), label: "Profile"),
    ];

    var navBody = [
      const HomeScreen(),
      const FavoritesScreen(),
      const NotificationScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
        body: Obx(
          () => Column(
            children: [
              Expanded(child: navBody.elementAt(controller.currentIndex.value)),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              selectedItemColor: buttoncolor,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(
                fontFamily: semibold,
              ),
              items: naviteam,
              onTap: (value) {
                controller.currentIndex.value = value;
              }),
        ));
  }
}
