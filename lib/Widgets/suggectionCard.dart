import 'package:facebookui/assetsFiles.dart';
import 'package:facebookui/sections/suggection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuggectionCard extends StatelessWidget {
  const SuggectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [ SuggectionIMG(),suggectionDetails()],
      ),
    );
  }

  Widget SuggectionIMG() {
    return Positioned(
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset(
              mirshad,
              height: 250,
              fit: BoxFit.cover,
            )));
  }

  Widget suggectionDetails() {
    return Positioned(
      child: Container(
        color: Colors.grey[700],
      ),
    );
  }
}
