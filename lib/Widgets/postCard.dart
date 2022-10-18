import 'package:facebookui/Widgets/avatar.dart';
import 'package:facebookui/Widgets/headderButtons.dart';
import 'package:facebookui/Widgets/horizontalDivider.dart';
import 'package:facebookui/Widgets/verticalDivider.dart';
import 'package:facebookui/assetsFiles.dart';
import 'package:facebookui/sections/headerButtonSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostCard extends StatelessWidget {
  final String ProfilePic;
  final String Name;
  final String publishedTime;
  final bool verifiedAccount;
  final String caption;
  final String postImage;
  final String likeCount;
  final String CommentCount;
  final String SHareCount;
  PostCard(
      {required this.ProfilePic,
      required this.Name,
      required this.publishedTime,
      this.verifiedAccount = false,
      required this.caption,
      required this.postImage,
      required this.likeCount,
      required this.CommentCount,
      required this.SHareCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          profileList(),
          tittleSection(),
          imageSection(),
          footerSection(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeadderButtons(
                name: 'Like',
                color: Colors.black,
                iconData: Icons.thumb_up,
              ),
              verticalDivider(thikness: 1),
              HeadderButtons(
                  iconData: Icons.message,
                  name: 'Comments',
                  color: Colors.black),
                  verticalDivider(thikness: 1),
              HeadderButtons(
                  iconData: Icons.forward, name: 'Share', color: Colors.black),
                  verticalDivider(thikness: 1)
            ],
          ),
          horizontalDivider()
        ],
      ),
    );
  }

  Widget tittleSection() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child:caption!=null && caption!=''? Container(
        padding: EdgeInsets.only(left: 5,right: 5),
        child: Text(
          caption ,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ):SizedBox(),
    );
  }

  Widget imageSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        child: Image.asset(
          postImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget profileList() {
    return ListTile(
      leading: Avathar(img: ProfilePic, displayIndicator: false),
      title: Row(
        children: [
          Text(
            Name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          verifiedAccount == true
              ? Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.check,
                    size: 10,
                    color: Colors.white,
                  )),
                )
              : Container()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedTime == null ? '' : publishedTime),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 17,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          )),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(right: 10, left: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Container(
                  width: 20,
                  height: 20,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    size: 15,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 5,
              ),
              displayTxt(count: likeCount),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              displayTxt(count: CommentCount),
              SizedBox(
                width: 5,
              ),
              displayTxt(count: 'Comments'),
              SizedBox(
                width: 10,
              ),
              displayTxt(count: SHareCount),
              SizedBox(
                width: 5,
              ),
              displayTxt(count: 'Shares'),
              SizedBox(
                width: 10,
              ),
              Avathar(
                img: strell,
                displayIndicator: false,
                avatharH: 25,
                avatharW: 25,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ))
            ],
          ),
        )
      ]),
    );
  }

  Widget displayTxt({required String count}) {
    return Text(
      count == null ? '' : count,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }
}
