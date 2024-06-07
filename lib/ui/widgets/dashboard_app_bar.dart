import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:opnimus_mobile_flutter/ui/theme/material_theme.dart';

class AppBarDashboard extends StatelessWidget implements PreferredSizeWidget {
  static const String titleText = 'OPNIMUS';
  final List<Widget>? actions;

  const AppBarDashboard({ super.key, this.actions });

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

class IconButtonSearchInfo extends StatelessWidget {
  const IconButtonSearchInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showSearch(
          context: context,
          delegate: SearchDelegateDashboard()
        );
      },
      icon: const Icon(EvaIcons.searchOutline)
    );
  }
}

class SearchDelegateDashboard extends SearchDelegate {
  List<String> resultList;
  List<String> suggestionList;

  SearchDelegateDashboard({
    this.resultList = const <String>[],
    this.suggestionList = const <String>[],
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(EvaIcons.searchOutline),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(EvaIcons.arrowBackOutline),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: resultList.length,
      itemBuilder: (context, index) {
        var result = resultList[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        var result = suggestionList[index];
        return ListTile(
          title: Text(result),
        );
      },
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