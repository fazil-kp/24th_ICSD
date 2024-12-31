import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/config/color/colors.dart';
import 'package:mine/extension/context_extension.dart';
import 'package:mine/extension/integer_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(),
      width: context.width(),
      color: context.primary,
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 40, width: 40, decoration: BoxDecoration(shape: BoxShape.circle, color: whiteColor)),
              10.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
                  5.height,
                  Text("24th ICSD", style: context.bodySmall?.copyWith(fontSize: 13, fontWeight: FontWeight.w600, color: context.surface)),
                ],
              ),
            ],
          ),
          40.height,
          Row(
            children: [
              Container(
                height: 150,
                width: 80,
                decoration: BoxDecoration(color: context.secondary, borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text("Welcome to", style: context.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: context.surface)),
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
