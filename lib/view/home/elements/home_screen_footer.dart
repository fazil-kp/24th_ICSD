import 'package:flutter/material.dart';
import 'package:icsd/common_elements/event_card.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:icsd/view/program/day1/day1_first_row.dart';
import 'package:icsd/view/program/day1/day1_second_row.dart';
import 'package:icsd/view/program/day1/day1_third_row.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 15,
      children: [
        Row(
          children: [
            Text("Events", style: context.bodySmall?.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: context.surface)),
            Spacer(),
            Text("See All", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: context.surface)),
          ],
        ),
        //! First Row of Events
        Day1FirstRow(),
        Day1SecondRow(),
        Day1ThirdRow(),
      ],
    );
  }
}
