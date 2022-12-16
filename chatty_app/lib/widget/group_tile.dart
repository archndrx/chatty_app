import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class GroupTile extends StatelessWidget {
  final String image;
  final String name;
  final String text;
  final String time;
  final bool unread;

  GroupTile(
      {required this.image,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleStyle,
              ),
              Text(
                text,
                style: unread ? subTitleStyle : subTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTextStyle,
          ),
        ],
      ),
    );
  }
}
