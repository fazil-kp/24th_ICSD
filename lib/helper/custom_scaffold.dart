import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/view/home/home_screen.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? child;
  const CustomScaffold({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: context.primary,
        body: child ?? HomeScreen(),
      ),
    );
  }
}
