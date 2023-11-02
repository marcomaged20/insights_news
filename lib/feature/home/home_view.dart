import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/feature/home/news/news_view.dart';
import 'package:insights_news/feature/notification/notification_view.dart';
import 'package:insights_news/feature/search/profile/profil_view.dart';
import 'package:insights_news/feature/search/profile/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> screens = [
    const newsview(),
    const searchview(),
    const notificationview(),
    const profilview(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Appcolors.sacffoldBG,
        // selectedItemColor: Appcolors.lomanda,
        // unselectedItemColor: Appcolors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home.svg'),
              label: 'Home',
              activeIcon: SvgPicture.asset(
                'assets/home.svg',
                colorFilter:
                    ColorFilter.mode(Appcolors.lomanda, BlendMode.srcIn),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Group.svg'),
              label: 'Group',
              activeIcon: SvgPicture.asset(
                'assets/Group.svg',
                colorFilter:
                    ColorFilter.mode(Appcolors.lomanda, BlendMode.srcIn),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Notification.svg'),
              label: 'Notification',
              activeIcon: SvgPicture.asset(
                'assets/Notification.svg',
                colorFilter:
                    ColorFilter.mode(Appcolors.lomanda, BlendMode.srcIn),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Vector.svg'),
              label: 'Vector',
              activeIcon: SvgPicture.asset(
                'assets/Vector.svg',
                colorFilter:
                    ColorFilter.mode(Appcolors.lomanda, BlendMode.srcIn),
              )),
        ],
      ),
    );
  }
}
