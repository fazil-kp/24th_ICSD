import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/config/color/colors.dart';
import 'package:mine/extension/integer_extension.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(height: 40, width: 40, decoration: BoxDecoration(shape: BoxShape.circle, color: whiteColor, image: DecorationImage(image: AssetImage("assets/images/dyuthi.png"), fit: BoxFit.fill))),
        10.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
            5.height,
            Text("24th ICSD", style: context.bodySmall?.copyWith(fontSize: 13, fontWeight: FontWeight.w600, color: context.surface)),
          ],
        ),
      ],
    );
  }
}
