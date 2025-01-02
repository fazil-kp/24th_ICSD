import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/common_elements/event_main_scree.dart';

class DayThreeEvent extends StatelessWidget {
  final bool? isScreen;
  const DayThreeEvent({super.key, this.isScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          EventMainScree(
            heading: "Day 3 Events",
            isScreen: isScreen,
            events: [
              for (int i = 0; i <= 30; i++)
                EventCard(
                  no: i + 1,
                  program: "Program Name",
                  venue: 'Auditorium',
                  time: '3:00 PM',
                  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada.',
                ),
            ],
          )
        ],
      ),
    );
  }
}
