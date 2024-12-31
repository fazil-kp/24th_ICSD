import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mine/config/color/colors.dart';

class CustomScaffold extends ConsumerWidget {
  final Widget? child;
  final String? title;
  final bool? enableBack;
  final bool? showAppBar;
  final Widget? trailing;

  const CustomScaffold({super.key, this.child, this.title, this.enableBack = true, this.trailing, this.showAppBar = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: child ?? SizedBox(),
      ),
    );
  }
}
