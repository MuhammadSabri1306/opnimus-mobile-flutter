import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:opnimus_mobile_flutter/models/user.dart';
import 'package:opnimus_mobile_flutter/providers/auth.dart';
import 'package:opnimus_mobile_flutter/ui/widgets/dashboard_app_bar.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDashboard(),
      body: Consumer<AuthProvider>(
        builder: (BuildContext context, AuthProvider authProvider, _) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            ],
          );
        },
      ),
    );
  }
}