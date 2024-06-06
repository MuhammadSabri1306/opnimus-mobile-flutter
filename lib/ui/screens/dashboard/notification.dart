import 'package:flutter/material.dart';

class NotifScreen extends StatelessWidget {
  const NotifScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60),
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