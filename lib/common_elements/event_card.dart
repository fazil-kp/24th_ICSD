import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card_bottom_sheet.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/extension/context_extension.dart';

class EventCard extends StatelessWidget {
  final int? no;
  final String program;
  final String? venue;
  final String time;
  final String? content;
  const EventCard({super.key, required this.program, this.venue, required this.time, this.no, this.content});

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
      child: Stack(
        children: [
          Row(
            spacing: 10,
            children: [
              Container(
                width: context.width() - 45,
                decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(8),
                child: Row(
                  spacing: 5,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 5,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: SizedBox(
                            width: context.width() - 65,
                            child: Text(
                              "$no - $program",
                              style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.surface),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        if (venue != null)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 3,
                            children: [
                              Icon(Icons.place_outlined, size: 12, color: context.surface),
                              SizedBox(width: context.width() - 76, child: Text(venue ?? '', style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary), overflow: TextOverflow.visible)),
                            ],
                          ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 3,
                          children: [
                            Icon(Icons.schedule_rounded, size: 12, color: context.surface),
                            Text(time, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
