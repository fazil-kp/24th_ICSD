import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';

class DayOneEvent extends StatelessWidget {
  const DayOneEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15,
        children: [
          for (int i = 0; i <= 10; i++)
            EventCard(
              no: i + 1,
              program: "Program Name",
              venue: "Auditorium",
              time: "3:00 PM",
            ),
        ],
      ),
    );
  }
}
