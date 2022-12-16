import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class ChatPersonRight extends StatelessWidget {
  final String image;
  final String text;
  final String time;

  ChatPersonRight(this.image, this.text, this.time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19),
            decoration: BoxDecoration(
              color: Color(0xffDCE0E3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 12,
                  width: 19,
                ),
                Text(
                  text,
                  style: chatStyle,
                ),
                Text(
                  time,
                  style: chatStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
