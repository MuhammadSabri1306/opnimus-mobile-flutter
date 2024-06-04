import 'package:flutter/material.dart';

import 'package:opnimus_mobile_flutter/ui/widgets/dashboard_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarDashboard(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notifikasi',
            style: TextStyle(
              fontSize: 20
            )
          ),
        ]
      ),
    );
  }
}