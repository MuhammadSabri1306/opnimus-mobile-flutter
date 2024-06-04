import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:opnimus_mobile_flutter/ui/theme/material_theme.dart';
import 'package:opnimus_mobile_flutter/ui/widgets/dashboard_app_bar.dart';
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/home.dart';
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/alarm.dart';
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/notification.dart';
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/user.dart';

Map<String, dynamic> userCircleAvatar = {
  'name': 'Sabri',
  'color': Colors.green
};

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int currentPageIndex = 0;
  NavList navList = NavList([
    NavItem(
      navDest: const NavigationDestination(
        selectedIcon: Icon(EvaIcons.home),
        icon: Icon(EvaIcons.homeOutline),
        label: 'Home',
      ),
      body: const HomeScreen(),
    ),
    NavItem(
      navDest: const NavigationDestination(
        selectedIcon: Icon(EvaIcons.alertCircle),
        icon: Icon(EvaIcons.alertCircleOutline),
        label: 'Alarm',
      ),
      body: const AlarmListScreen()
    ),
    NavItem(
      navDest: const NavigationDestination(
        selectedIcon: Icon(EvaIcons.bell),
        icon: Icon(EvaIcons.bellOutline),
        label: 'Notifikasi',
      ),
      body: const NotificationScreen()
    ),
    NavItem(
      navDest: NavigationDestination(
        icon: CircleAvatarNavIcon(
          name: userCircleAvatar['name'],
          backgroundColor: userCircleAvatar['color'],
        ),
        label: 'Profil',
      ),
      body: const UserScreen()
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: getIndicatorColor(),
        selectedIndex: currentPageIndex,
        destinations: navList.navDests,
      ),
      body: navList.bodies[currentPageIndex],
    );
  }

  Color? getIndicatorColor() {
    Map<int, Color> primaryColors = MaterialPalettes.getPrimary();
    return MaterialTheme.getAppliedColorModes(
      lightColor: primaryColors[70],
      darkColor: primaryColors[30]
    );
  }

}

class NavItem {
  NavigationDestination navDest;
  Widget body;
  NavItem({ required this.navDest, required this.body });
}

class NavList {
  List<NavItem> navItems = [];

  NavList(this.navItems);

  List<NavigationDestination> get navDests => navItems.map((item) => item.navDest).toList();
  List<Widget> get bodies => navItems.map((item) => item.body).toList();

}