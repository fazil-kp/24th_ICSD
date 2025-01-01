import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';

class Day1SecondRow extends StatelessWidget {
  const Day1SecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 15,
        children: [
          for (int i = 0; i <= 10; i++)
            EventCard(
              image: "assets/images/ban1.jpg",
              program: "Program Name",
              venue: "Auditorium",
              time: "3:00 PM",
            ),
        ],
      ),
    );
  }
}
