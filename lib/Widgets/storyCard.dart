import 'package:facebookui/Widgets/appBarButton.dart';
import 'package:facebookui/Widgets/avatar.dart';
import 'package:facebookui/assetsFiles.dart';
import 'package:facebookui/sections/headerButtonSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryCard extends StatelessWidget {
  final String labalTxt;
  final String stry;
  final String avathar;
  final bool createstorystatus;
  final bool displayBorder;

  const StoryCard(
      {required this.labalTxt,
      required this.stry,
      required this.avathar,
      this.createstorystatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(stry), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createstorystatus
                  ? AppbarButton(
                      iconData: Icons.add,
                      txt: "Create new story",
                      boxcolor: Colors.white,
                      iconcolor: Colors.black,
                    )
                  : Avathar(
                    img: avathar,
                     displayIndicator: false,
                     displayborder: displayBorder,
                     avatharH: 40,
                     avatharW: 40,)),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labalTxt != null ? labalTxt : 'N/A',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
