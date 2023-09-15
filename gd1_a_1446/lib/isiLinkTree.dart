import 'package:flutter/material.dart';
import 'package:gd1_a_1446/elementLinkTree.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gd1_a_1446/service/directToLink.dart';

class IsiLinkTree extends StatefulWidget {
  const IsiLinkTree({super.key});

  @override
  State<IsiLinkTree> createState() => _IsiLinkTreeState();
}

class _IsiLinkTreeState extends State<IsiLinkTree> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardForlinkTree(
          icon: Icons.phone,
          text: '+92 123 456 789',
        ),
        const CardForlinkTree(
          icon: Icons.email,
          text: 'ronanfredo@gmail.com',
        ),
        CardForlinkTree(
          icon: FontAwesomeIcons.youtube,
          text: 'Youtube',
          onPressed: () {
            Direct.launchURL('https://www.youtube.com/');
          },
        ),
        CardForlinkTree(
          icon: FontAwesomeIcons.discord,
          text: 'Discord',
          onPressed: () {
            Direct.launchURL('https://www.discord.com/');
          },
        )
      ],
    );
  }
}
