import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class ChatPerson extends StatelessWidget {
  final String image;
  final String text;
  final String time;

  ChatPerson(this.image, this.text, this.time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19),
            decoration: BoxDecoration(
              color: Color(0xffDCE0E3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
        ],
      ),
    );
  }
}
