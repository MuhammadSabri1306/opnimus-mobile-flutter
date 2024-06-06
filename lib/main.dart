import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/alarm.dart';
import 'providers/auth.dart';
import 'datas/example_model.dart';
import 'helpers/navigation.dart';
import 'ui/theme/material_theme.dart';

void main() {
  AppNavigation.instance;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AlarmProvider>(create: (_) => AlarmProvider(exampleAlarms)),
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider(user: exampleUser))
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var materialTheme = MaterialTheme(context: context, useDarkMode: true);
    return MaterialApp.router(
      title: 'Opnimus Mobile',
      theme: materialTheme.getSelectedTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigation.router,
    );
  }
}