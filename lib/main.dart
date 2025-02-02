import 'package:flutter/material.dart';
import 'package:icsd/config/theme.dart';
import 'package:icsd/routes/icsd_routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ICSD());
}

class ICSD extends StatelessWidget {
  const ICSD({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routeX,
      title: '24th ICSD',
      scrollBehavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
      themeMode: ThemeMode.light,
      theme: AppTheme.getThemeData(ThemeMode.light),
      darkTheme: AppTheme.getThemeData(ThemeMode.dark),
    );
  }
}



