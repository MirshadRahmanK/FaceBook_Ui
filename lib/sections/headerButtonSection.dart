import 'package:facebookui/Widgets/headderButtons.dart';
import 'package:facebookui/Widgets/verticalDivider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeaderButtonSection extends StatelessWidget {
  
  const HeaderButtonSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          HeadderButtons(
              iconData: Icons.video_call, name: 'Live', color: Colors.red),
          verticalDivider(thikness: 1),
          HeadderButtons(
              iconData: Icons.photo_library,
              name: 'Photos',
              color: Colors.green),
          verticalDivider(thikness: 1),
          HeadderButtons(
              iconData: Icons.video_call, name: 'Room', color: Colors.purple)
        ],
      ),
    );
  }
}
