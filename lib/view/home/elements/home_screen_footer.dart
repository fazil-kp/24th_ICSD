import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:icsd/routes/route_list.dart';
import 'package:icsd/view/events/day_one/day_one_event.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              Text("Events", style: context.bodySmall?.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: context.surface)),
              Spacer(),
              InkWell(onTap: () => context.pushNamed(MainRoute.dayOne), child: Text("See All", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: context.surface))),
            ],
          ),
        ),
        DayOneEvent(),
      ],
    );
  }
}
