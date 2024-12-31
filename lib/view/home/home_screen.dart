import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/view/home/elements/home_screen_body.dart';
import 'package:icsd/view/home/elements/home_screen_header.dart';
import 'package:mine/extension/context_extension.dart';
import 'package:mine/extension/integer_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(),
      width: context.width(),
      color: context.primary,
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeScreenHeader(),
          40.height,
          HomeScreenBody(),
        ],
      ),
    );
  }
}
