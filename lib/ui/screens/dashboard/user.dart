import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:opnimus_mobile_flutter/models/user.dart';
import 'package:opnimus_mobile_flutter/providers/auth.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (BuildContext context, AuthProvider authProvider, _) {
        return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Text(
                'Account',
                style: TextStyle(
                  fontSize: 20
                )
              ),
            ]
          ),
        );
      },
    );
  }
}