import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:opnimus_mobile_flutter/ui/theme/material_theme.dart';

class AppBarDashboard extends StatelessWidget implements PreferredSizeWidget {
  static const String titleText = 'OPNIMUS';
  final List<Widget> actions;

  const AppBarDashboard({super.key, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleText,
        style: TextStyle(color: MaterialPalettes.getPrimary()[50], fontWeight: FontWeight.w900),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class IconButtonAppInfo extends StatelessWidget {
  const IconButtonAppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        debugPrint('App Info was clicked');
      },
      icon: const Icon(EvaIcons.infoOutline)
    );
  }
}

class CircleAvatarNavIcon extends StatelessWidget {
  final String name;
  final Color backgroundColor;

  const CircleAvatarNavIcon({ super.key, required this.name, required this.backgroundColor });

  String get nameInitial => name[0].toUpperCase();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: backgroundColor,
      child: Text(
        nameInitial,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}