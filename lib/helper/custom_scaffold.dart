import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mine/config/color/colors.dart';
import 'package:mine/extension/context_extension.dart';

class CustomScaffold extends ConsumerWidget {
  final Widget? child;

  const CustomScaffold({super.key, this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: child ??
            Container(
              height: context.height(),
              width: context.width(),
              color: redColor,
            ),
      ),
    );
  }
}
