import 'package:facebookui/Widgets/appBarButton.dart';
import 'package:facebookui/Widgets/horizontalDivider.dart';
import 'package:facebookui/Widgets/postCard.dart';
import 'package:facebookui/Widgets/verticalDivider.dart';
import 'package:facebookui/assetsFiles.dart';
import 'package:facebookui/sections/headerButtonSection.dart';
import 'package:facebookui/sections/roomSection.dart';
import 'package:facebookui/sections/statusSection.dart';
import 'package:facebookui/sections/storySection.dart';
import 'package:facebookui/sections/suggection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: const [
          AppbarButton(
            iconData: Icons.search,
            txt: "Go to search page",
            boxcolor: Colors.grey,
            iconcolor: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
          AppbarButton(
            iconData: Icons.message,
            txt: "Go to message page",
            boxcolor: Colors.grey,
            iconcolor: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          Divider(thickness: 1, color: Colors.grey[300]),
          HeaderButtonSection(),
          horizontalDivider(),
          RoomSection(),
          horizontalDivider(),
          StorySection(),
          horizontalDivider(),
          PostCard(
            Name: "Strell",
            ProfilePic: strell,
            publishedTime: '2 h',
            verifiedAccount: true,
            caption: 'Himalaya ❤️',
            postImage: mirshad,
            likeCount: '10k',
            CommentCount: '1k',
            SHareCount: '100',
          ),
          PostCard(
              ProfilePic: mirshad,
              Name: 'MirshadKvr',
              publishedTime: '10h',
              caption: 'Like Please',
              postImage: waterfall,
              likeCount: '17k',
              CommentCount: '3k',
              SHareCount: '10'),
          PostCard(
              ProfilePic: mammookka2,
              Name: 'Mammokka',
              publishedTime: '11',
              postImage: mammokka1,
              caption: '',
              verifiedAccount: true,
              likeCount: '102k',
              CommentCount: '4',
              SHareCount: '2'),
          suggection(),
          PostCard(
              ProfilePic: elonmusk,
              Name: 'ElonMusk',
              publishedTime: '12h',
              caption: elonMuskcaption,
              postImage: tesla,
              likeCount: '100k',
              CommentCount: '5k',
              SHareCount: '2k',
              verifiedAccount: true,),
              
        ],
      ),
    );
  }
}
