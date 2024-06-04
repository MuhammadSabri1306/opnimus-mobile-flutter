import 'package:flutter/material.dart';
import 'package:opnimus_mobile_flutter/ui/theme/material_theme.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const String titleText = 'OPNIMUS';
  final List<Widget> actions;

  const BaseAppBar({super.key, this.actions = const []});

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
