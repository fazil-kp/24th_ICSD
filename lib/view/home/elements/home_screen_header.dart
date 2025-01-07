import 'package:flutter/material.dart';
import 'package:icsd/config/colors.dart';
import 'package:icsd/config/theme.dart';
import 'package:mine/extension/integer_extension.dart';
import 'package:smart_popup/smart_popup.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, top: 22, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: 40, width: 40, decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/images/dyuthi.jpg"), fit: BoxFit.fill))),
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
          Spacer(),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => SmartPopup(
                  title: "Download Program Schedule",
                  subTitle: "You can download the complete program schedule of Dyuthi 2025.",
                  primaryButtonText: "Download",
                  imagePath: "assets/images/dyuthi.jpg",
                  primaryButtonTap: () {
                    _launchURL("https://drive.google.com/file/d/1oExBcWlGwzdP1Jx-QrvrpInBMwRaop7v/view?usp=drivesdk");
                  },
                  closeButtonBackgroundColor: context.secondary,
                  closeButtonIconColor: context.surface,
                  primaryButtonColor: context.secondary,
                ),
              );
            },
            child: Icon(Icons.download, color: Colors.white, size: 26),
          ),
          10.width,
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
