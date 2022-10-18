import 'package:facebookui/Widgets/avatar.dart';
import 'package:facebookui/assetsFiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          CreateRoomButton(),
          Avathar(img: mirshad,displayIndicator: true,),
          Avathar(img: mammokka1,displayIndicator: true,),
          Avathar(img: tesla,displayIndicator: true,),
          Avathar(img: yousuf,displayIndicator: true,),
          Avathar(img: strell2,displayIndicator: true,),
          Avathar(img: elonmusk,displayIndicator: true,),
          Avathar(img: himalaya,displayIndicator: true,)

        ],
      ),
    );
  }

  Widget CreateRoomButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 5,left: 5),
      child: OutlinedButton.icon(
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text("Create \n Room"),
        onPressed: () => print("it's pressed"),
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.blue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
