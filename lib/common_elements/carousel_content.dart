import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:mine/config/responsive/responsive_helper.dart';

class CarouselContent extends StatelessWidget {
  final String image;
  const CarouselContent({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final respo = ResponsiveHelper.isDesktop(context);
    return Padding(padding: EdgeInsets.only(left: respo ? 15 : 8.0), child: Container(decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill))));
  }
}
