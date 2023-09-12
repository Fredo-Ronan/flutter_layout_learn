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
          text: 'broman@gmail.com',
        ),
        CardForlinkTree(
          icon: FontAwesomeIcons.instagram,
          text: 'Instagram',
          onPressed: () {
            Direct.launchURL('https://www.instagram.com/');
          },
        ),
        CardForlinkTree(
          icon: FontAwesomeIcons.facebook,
          text: 'Facebook',
          onPressed: () {
            Direct.launchURL('https://www.facebook.com/');
          },
        )
      ],
    );
  }
}
