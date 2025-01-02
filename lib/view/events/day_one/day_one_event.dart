import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/common_elements/event_main_scree.dart';

class DayOneEvent extends StatelessWidget {
  final bool? isScreen;
  const DayOneEvent({super.key, this.isScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          EventMainScree(
            heading: "Day 1 Events",
            isScreen: isScreen,
            events: [
              EventCard(
                no: 1,
                program: "hiiii",
                venue: 'kokomo',
                time: '8989',
              )
            ],
          )
        ],
      ),
    );
  }
}
