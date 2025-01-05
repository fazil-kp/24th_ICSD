import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/extension/integer_extension.dart';
import 'package:mine/extension/widget_extension.dart';

class EventCardBottomSheet extends StatelessWidget {
  final String program;
  final String? venue;
  final String time;
  final String? content;
  const EventCardBottomSheet({super.key, required this.program, this.venue, required this.time, this.content});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.4,
      child: DefaultTabController(
        length: 3,
        child: Container(
          decoration: BoxDecoration(color: context.primary, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(program, style: context.bodySmall?.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: context.surface)),
                        15.height,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 3,
                          children: [
                            if (venue != null) ...[
                              Icon(Icons.place_outlined, size: 12, color: context.surface),
                              Text(venue ?? '', style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
                              10.width,
                            ],
                            Icon(Icons.schedule_rounded, size: 12, color: context.surface),
                            Text(time, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
                          ],
                        )
                      ],
                    ),
                  ),
                  if (content != null) ...[
                    10.height,
                    Divider(color: context.surface),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10), child: SingleChildScrollView(child: Text(content ?? '', style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: context.surface, letterSpacing: .5), textAlign: TextAlign.justify))),
                  ],
                ],
              ),
              Positioned(
                right: 15,
                top: 15,
                child: Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(color: context.secondary, shape: BoxShape.circle),
                      child: Icon(Icons.keyboard_arrow_down_outlined, color: context.surface, size: 28),
                    ).onTap(() => Navigator.pop(context)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
