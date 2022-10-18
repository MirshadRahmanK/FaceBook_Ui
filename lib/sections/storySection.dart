import 'package:facebookui/Widgets/storyCard.dart';
import 'package:facebookui/assetsFiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labalTxt: 'Add To Story',
            avathar: dq2,
            stry: strell,
            createstorystatus: true,
          ),
          StoryCard(
            labalTxt: 'Dq',
            avathar: dq1,
            stry: mammokka1,
            displayBorder: true,
          ),
          StoryCard(
            labalTxt: 'Mirshad',
            avathar: mirshad,
            stry: chakkaa,
            displayBorder: true,
          ),
          StoryCard(
            labalTxt: 'dq',
            avathar: dq2,
            stry: waterfall,
            displayBorder: true,
          ),
          StoryCard(
            labalTxt: 'Elon Musk',
            avathar: elonmusk,
            stry: tesla,
            displayBorder: true,
          ),
          StoryCard(
            labalTxt: 'billGates',
            avathar: billgates,
            stry: pulsar,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
