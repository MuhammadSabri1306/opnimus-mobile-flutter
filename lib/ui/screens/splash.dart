import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:go_router/go_router.dart';

import 'package:opnimus_mobile_flutter/helpers/navigation.dart';
import 'package:opnimus_mobile_flutter/ui/theme/material_theme.dart';

class SplashScreen extends StatefulWidget {
  final bool applyLoading;

  const SplashScreen({ super.key, this.applyLoading = false });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => AppNavigation.router.push(
        AppNavigation.dashboardPath
      )
    );
  }

  CircularProgressIndicator getProgressIndicator([Color? color]) {
    color ??= MaterialTheme.getSelectedScheme().primary;
    return CircularProgressIndicator( 
      valueColor:  AlwaysStoppedAnimation<Color>(color),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String imgName = MaterialTheme.pickByAppliedMode(
      light: 'assets/images/splash_icon.png',
      dark: 'assets/images/splash_icon_dark.png'
    );

    final Color bgColor = MaterialTheme.pickByAppliedMode(
      light: MaterialPalettes.baseWhite,
      dark: MaterialPalettes.baseBlueDark
    );

    final Color textColor = MaterialTheme.pickByAppliedMode(
      light: MaterialPalettes.baseBlueLight,
      dark: MaterialPalettes.baseWhite
    );

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: bgColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  imgName,
                  height: 300.0,
                  width: 300.0,
                ),
                Text(
                  'OPNIMUS',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
            if(widget.applyLoading) getProgressIndicator()
          ],
        ),
      ),
    );
  }
}