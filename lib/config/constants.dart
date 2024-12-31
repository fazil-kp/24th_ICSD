import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConstanceData {
  static const String appName = '24th ICSD';
  static const String restorationScopeId = "24th_icsd.0.1";
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static WidgetRef? notificationWidgetRef;
  static BuildContext? notificationContext;
}
