import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/view/home/elements/home_screen_body.dart';
import 'package:icsd/view/home/elements/home_screen_footer.dart';
import 'package:icsd/view/home/elements/home_screen_header.dart';
import 'package:mine/extension/context_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(),
      width: context.width(),
      color: context.primary,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 25,
          children: [
            HomeScreenHeader(),
            HomeScreenBody(),
            HomeScreenFooter(),
          ],
        ),
      ),
    );
  }
}
