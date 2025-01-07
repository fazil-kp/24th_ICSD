import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/extension/integer_extension.dart';
import 'package:mine/extension/widget_extension.dart';

class EventMainScreen extends StatelessWidget {
  final bool? isScreen;
  final String? heading;
  final String? date;
  final List<EventCard> events;
  const EventMainScreen({super.key, this.isScreen = false, this.heading, required this.events, this.date});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                if (isScreen == true) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0, top: 8),
                    child: Row(
                      children: [
                        Text(heading ?? '', style: context.bodySmall?.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: context.surface)),
                        Spacer(),
                        Text(date ?? '', style: context.bodySmall?.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: context.surface)),
                      ],
                    ),
                  ),
                  10.height,
                ],
                ...events,
              ],
            ),
            if (isScreen == true)
              Positioned(
                left: 0,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: context.secondary, shape: BoxShape.circle),
                      child: Icon(Icons.arrow_back, color: context.surface, size: 24),
                    ).onTap(() => Navigator.pop(context)),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
