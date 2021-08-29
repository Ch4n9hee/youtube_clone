import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sideproject_youtube_clone/src/pages/explore.dart';
import 'package:sideproject_youtube_clone/src/pages/library.dart';
import 'package:sideproject_youtube_clone/src/pages/subscribe.dart';

import 'controller/app_controller.dart';
import 'pages/home.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          onTap: (index) {
            controller.changePageIndex(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/icons/home_off.svg'),
                activeIcon: SvgPicture.asset('assets/svg/icons/home_on.svg'),
                label: '홈'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/icons/compass_off.svg',
                  width: 22,
                ),
                activeIcon: SvgPicture.asset('assets/svg/icons/compass_on.svg',
                    width: 22),
                label: '탐색'),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset('assets/svg/icons/plus.svg',
                        width: 35)),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/icons/subs_off.svg'),
                activeIcon: SvgPicture.asset('assets/svg/icons/subs_on.svg'),
                label: '구독'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svg/icons/library_off.svg'),
                activeIcon: SvgPicture.asset('assets/svg/icons/library_on.svg'),
                label: '보관함'),
          ],
        ),
      ),
      body: Obx(() {
        switch(RouteName.values[controller.currentIndex.value]){
          case RouteName.Home:
            return Home();
          case RouteName.Explore:
            return Explore();
          case RouteName.Subs:
            return Subscribe();
          case RouteName.Library:
            return Library();
          case RouteName.Add:
            break;
        }
        return Container();
      }),
    );
  }
}
