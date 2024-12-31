import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/extension/context_extension.dart';
import 'package:mine/extension/integer_extension.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 80,
          decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
            ],
          ),
        ),
        10.width,
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(height: 150.0, autoPlay: true, aspectRatio: 1.0, viewportFraction: 1),
            items: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: context.width(),
                  decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
