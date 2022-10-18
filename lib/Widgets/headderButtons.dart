import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeadderButtons extends StatelessWidget {
  final IconData iconData;
  final String name;
  final Color color;
  const HeadderButtons(
      {required this.iconData, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(
          iconData,
          color: color,
        ),
        label: Text(
          name,
          style: TextStyle(color: Colors.black),
        ));
  }
}
