import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:opnimus_mobile_flutter/ui/theme/material_theme.dart';
import 'package:opnimus_mobile_flutter/ui/widgets/dashboard_app_bar.dart';

Map<String, dynamic> userCircleAvatar = {
  'name': 'Sabri',
  'color': Colors.green
};

class DashboardScreen extends StatefulWidget {

  final StatefulNavigationShell child;

  const DashboardScreen({ super.key, required this.child });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<NavigationDestination> navDests = [
    const NavigationDestination(
      selectedIcon: Icon(EvaIcons.home),
      icon: Icon(EvaIcons.homeOutline),
      label: 'Home',
    ),
    const NavigationDestination(
      selectedIcon: Icon(EvaIcons.radioButtonOn),
      icon: Icon(EvaIcons.radioButtonOnOutline),
      label: 'Ports',
    ),
    const NavigationDestination(
      selectedIcon: Icon(EvaIcons.bell),
      icon: Icon(EvaIcons.bellOutline),
      label: 'Notifikasi',
    ),
    NavigationDestination(
      icon: CircleAvatarNavIcon(
        name: userCircleAvatar['name'],
        backgroundColor: userCircleAvatar['color'],
      ),
      label: 'Account',
    )
  ];

  List<Widget>? get appBarActions {
    if(widget.child.currentIndex == 0) {
      return [ const IconButtonAppInfo() ];
    }

    if(widget.child.currentIndex == 1) {
      return [ const IconButtonSearchInfo(), const IconButtonAppInfo() ];
    }

    return null;
  }

  Color get indicatorColor {
    Map<int, Color> primaryColors = MaterialPalettes.getPrimary();
    var color = MaterialTheme.getAppliedColorModes(
      lightColor: primaryColors[70]!,
      darkColor: primaryColors[30]!
    );
    return color;
  }

  void onTap(int index) {
    widget.child.goBranch(
      index,
      initialLocation: index == widget.child.currentIndex,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDashboard(
        actions: appBarActions,
      ),
      body: SafeArea(child: widget.child),
      bottomNavigationBar: NavigationBar(
        indicatorColor: indicatorColor,
        selectedIndex: widget.child.currentIndex,
        destinations: navDests,
        onDestinationSelected: onTap,
      ),
    );
  }
}