import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:icsd/config/theme.dart';
import 'package:icsd/routes/icsd_routes.dart';
import 'package:icsd/view_model/riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const ProviderScope(child: ICSD()));
}

class ICSD extends ConsumerWidget {
  const ICSD({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routeX,
      title: '24th ICSD',
      themeMode: ref.watch(scaffoldVM).isLightTheme ? ThemeMode.light : ThemeMode.dark,
      theme: AppTheme.getThemeData(ThemeMode.light),
      darkTheme: AppTheme.getThemeData(ThemeMode.dark),
    );
  }
}
