import 'package:facebookui/Widgets/suggectionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class suggection extends StatelessWidget {
  const suggection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
          ),
          Container(
            height: 340,
           child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SuggectionCard()
          ],
           ),
          )
        ],
      ),
    );
  }
}