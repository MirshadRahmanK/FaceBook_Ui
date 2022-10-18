import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Avathar extends StatelessWidget {
  final String img;
  final bool displayIndicator;
  final bool displayborder;
  final int avatharH;
  final int avatharW;
  const Avathar(
      {required this.img,
       this.avatharH=50,
       this.avatharW=50,
      required this.displayIndicator,
      this.displayborder = false});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayborder
                  ? Border.all(color: Colors.blueAccent, width: 3)
                  : Border()),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              img,
              height: avatharH.toDouble(),
              width: avatharW.toDouble(),
            ),
          ),
        ),
      ),
      displayIndicator
          ? Positioned(
              bottom: 0,
              right: 1.0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
              ))
          : SizedBox()
    ]);
  }
}
