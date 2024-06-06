import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:opnimus_mobile_flutter/ui/screens/test.dart';
import 'package:opnimus_mobile_flutter/ui/screens/dashboard.dart';
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/home.dart' as dashboard_home;
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/alarm.dart' as dashboard_port;
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/notification.dart' as dashboard_notif;
import 'package:opnimus_mobile_flutter/ui/screens/dashboard/user.dart' as dashboard_account;

class AppNavigation {

  static final AppNavigation _instance = AppNavigation._internal();
  static AppNavigation get instance => _instance;
  factory AppNavigation() {
    return _instance;
  }

  static final GlobalKey<NavigatorState> parentNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> dashboardTabHomeNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> dashboardTabPortsNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> dashboardTabNotifsNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> dashboardTabAccountNavigatorKey = GlobalKey<NavigatorState>();

  static const String dashboardPath = '/dashboard';
  // static const String dashboardPortsSub = 'ports';
  // static const String dashboardNotifsSub = 'notifs';
  // static const String dashboardAccountSub = 'account';
  static const String dashboardPortsPath = '/dashboard-ports';
  static const String dashboardNotifsPath = '/dashboard-notifs';
  static const String dashboardAccountPath = '/dashboard-account';

  static late final GoRouter router;

  AppNavigation._internal() {
    final homeRoute = GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: TestScreen());
      },
    );

    final dashboardRoute = StatefulShellRoute.indexedStack(
      parentNavigatorKey: parentNavigatorKey,
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: dashboardTabHomeNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: dashboardPath,
              builder: (BuildContext context, GoRouterState state) =>
                  const dashboard_home.HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: dashboardTabPortsNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: dashboardPortsPath,
              builder: (BuildContext context, GoRouterState state) =>
                  const dashboard_port.AlarmListScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: dashboardTabNotifsNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: dashboardNotifsPath,
              builder: (BuildContext context, GoRouterState state) =>
                  const dashboard_notif.NotificationScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: dashboardTabAccountNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: dashboardAccountPath,
              builder: (BuildContext context, GoRouterState state) =>
                  const dashboard_account.UserScreen(),
            ),
          ],
        ),
      ],
      pageBuilder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        return getPage(
          child: DashboardScreen(child: navigationShell),
          state: state,
        );
      },
    );

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: dashboardPath,
      routes: [
        homeRoute,
        dashboardRoute
      ]
    );
  }

  static Page getPage({ required Widget child, required GoRouterState state, }) {
    return MaterialPage(key: state.pageKey, child: child);
  }

}