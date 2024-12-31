import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/extension/integer_extension.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Events", style: context.bodySmall?.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: context.surface)),
            Spacer(),
            Text("See All", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: context.surface)),
          ],
        ),
        15.height,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i <= 10; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Container(
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
                ),
            ],
          ),
        ),
        15.height,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i <= 10; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Container(
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
                ),
            ],
          ),
        ),
        15.height,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i <= 10; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Container(
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
                ),
            ],
          ),
        ),
      ],
    );
  }
}
