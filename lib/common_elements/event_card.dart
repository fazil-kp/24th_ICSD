import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card_bottom_sheet.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/extension/context_extension.dart';
import 'package:mine/extension/integer_extension.dart';
import 'package:mine/extension/widget_extension.dart';

class EventCard extends StatelessWidget {
  final int? no;
  final String program;
  final String venue;
  final String time;
  final String content;
  const EventCard({super.key, required this.program, required this.venue, required this.time, this.no, required this.content});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return EventCardBottomSheet(program: program, venue: venue, time: time, content: content);
          },
        );
      },
      child: Row(
        spacing: 10,
        children: [
          if (no != null)
            Container(
              height: 55,
              width: 50,
              decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(8),
              child: Text(no.toString(), style: context.bodySmall?.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: context.surface)).center(),
            ),
          Container(
            height: 55,
            width: no != null ? context.width() - 105 : context.width() - 45,
            decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(8),
            child: Row(
              spacing: 5,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Text(program, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.surface)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 3,
                      children: [
                        Icon(Icons.place_rounded, size: 12, color: context.surface),
                        Text(venue, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.schedule_rounded, size: 12, color: context.surface),
                Text(time, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
                2.width,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
