import 'package:flutter/material.dart';

// import 'package:opnimus_mobile_flutter/ui/theme/material_theme.dart';
import 'package:opnimus_mobile_flutter/ui/widgets/dashboard_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarDashboard(
        actions: <Widget>[
          IconButtonAppInfo()
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Home Page',
              style: TextStyle(
                fontSize: 20
              )
            ),
          ]
        ),
      )
    );
  }
}