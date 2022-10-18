import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppbarButton extends StatelessWidget {
  final IconData iconData;
  final String txt;
  final Color boxcolor;
  final Color iconcolor;
  const AppbarButton(
      {required this.iconData, required this.txt, required this.boxcolor,required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxcolor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: () {
            print(txt);
          },
          icon: Icon(
            iconData,
            color: iconcolor,
            size: 25,
          )),
    );
  }
}
