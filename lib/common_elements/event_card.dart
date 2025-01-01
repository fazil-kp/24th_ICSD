import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/config/color/colors.dart';
import 'package:mine/extension/context_extension.dart';

class EventCard extends StatelessWidget {
  final String image;
  final String program;
  final String venue;
  final String time;
  const EventCard({super.key, required this.image, required this.program, required this.venue, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 200,
      decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 5,
        children: [
          Container(height: 100, width: context.width(), decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill))),
          Text(program, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 3,
            children: [
              Icon(Icons.place_rounded, size: 12, color: whiteColor),
              Text(venue, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: context.tertiary)),
              Spacer(),
              Icon(Icons.schedule_rounded, size: 12, color: whiteColor),
              Text(time, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: context.tertiary)),
            ],
          )
        ],
      ),
    );
  }
}
