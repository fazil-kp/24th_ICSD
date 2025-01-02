import 'package:flutter/material.dart';
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
  final String theme;
  final String guest;
  final String designation;
  const EventCard({super.key, required this.program, required this.venue, required this.time, this.no, required this.theme, required this.guest, required this.designation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return EventCardBottomSheet(program: program, venue: venue, time: time, theme: theme, guest: guest, designation: designation);
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

class EventCardBottomSheet extends StatelessWidget {
  final String program;
  final String venue;
  final String time;
  final String theme;
  final String guest;
  final String designation;
  const EventCardBottomSheet({super.key, required this.program, required this.venue, required this.time, required this.theme, required this.guest, required this.designation});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.6,
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
                            Icon(Icons.place_rounded, size: 12, color: context.surface),
                            Text(venue, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
                            10.width,
                            Icon(Icons.schedule_rounded, size: 12, color: context.surface),
                            Text(time, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: context.tertiary)),
                          ],
                        )
                      ],
                    ),
                  ),
                  10.height,
                  TabBar(
                    labelColor: context.surface,
                    unselectedLabelColor: context.surface,
                    dividerColor: context.surface,
                    indicatorColor: context.secondary,
                    dividerHeight: .5,
                    tabs: [
                      Tab(text: 'Theme'),
                      Tab(text: 'Guest'),
                      Tab(text: 'Designation'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(padding: const EdgeInsets.all(16.0), child: SingleChildScrollView(child: Text(theme, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: context.surface, letterSpacing: .5), textAlign: TextAlign.justify))),
                        Padding(padding: const EdgeInsets.all(16.0), child: SingleChildScrollView(child: Text(guest, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: context.surface, letterSpacing: .5), textAlign: TextAlign.justify))),
                        Padding(padding: const EdgeInsets.all(16.0), child: SingleChildScrollView(child: Text(designation, style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: context.surface, letterSpacing: .5), textAlign: TextAlign.justify))),
                      ],
                    ),
                  ),
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
