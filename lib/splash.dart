import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mine/config/color/colors.dart';
import 'package:mine/extension/integer_extension.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useAnimationController(duration: const Duration(seconds: 1));
    final animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    useEffect(() {
      controller.forward();
      final timer = Timer(const Duration(seconds: 2), () => context.pushReplacement('/main'));
      return timer.cancel;
    }, [controller]);
    return Container(
      color: whiteColor,
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0, backgroundColor: whiteColor),
        backgroundColor: whiteColor,
        body: FadeTransition(
          opacity: animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Center(child: Image.asset('assets/images/splash.png', width: 500, height: 250, fit: BoxFit.fill))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome ', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400)),
                  Icon(Icons.favorite, color: Colors.red, size: 20),
                  Text(' 24th ICSD', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400)),
                ],
              ),
              30.height,
            ],
          ),
        ),
      ),
    );
  }
}
