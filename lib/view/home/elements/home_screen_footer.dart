import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 15,
      children: [
        Row(
          children: [
            Text("Events", style: context.bodySmall?.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: context.surface)),
            Spacer(),
            Text("See All", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: context.surface)),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 15,
            children: [
              for (int i = 0; i <= 10; i++)
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
                    ],
                  ),
                ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 15,
            children: [
              for (int i = 0; i <= 10; i++)
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
                    ],
                  ),
                ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 15,
            children: [
              for (int i = 0; i <= 10; i++)
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
