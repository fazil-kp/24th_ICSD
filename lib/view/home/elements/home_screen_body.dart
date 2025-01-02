import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/config/responsive/responsive_helper.dart';
import 'package:mine/extension/integer_extension.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final respo = ResponsiveHelper.isDesktop(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Text("Day", style: context.bodySmall?.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: context.surface)),
                Text("1", style: context.bodySmall?.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: context.tertiary)),
                Divider(),
                Text("Time", style: context.bodySmall?.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: context.surface)),
                Text("9:00 - 19:00 ", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
              ],
            ),
          ),
          10.width,
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(height: 150.0, autoPlay: true, aspectRatio: 1.0, viewportFraction: respo ? .3 : 1),
              items: [
                Padding(
                  padding: EdgeInsets.only(left: respo ? 15 : 8.0),
                  child: Container(decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage("assets/images/ban1.jpg"), fit: BoxFit.fill))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: respo ? 15 : 8.0),
                  child: Container(decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage("assets/images/ban2.jpg"), fit: BoxFit.fill))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: respo ? 15 : 8.0),
                  child: Container(decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage("assets/images/ban3.jpg"), fit: BoxFit.fill))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
