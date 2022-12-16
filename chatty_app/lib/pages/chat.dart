import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty_app/widget/chat_person_tile.dart';
import 'package:chatty_app/widget/chat_person_tile_right.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/icon.png',
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
                            'Jakarta Fair',
                            style: titleStyle,
                          ),
                          Text(
                            '14,209 members',
                            style: subTextStyle,
                          )
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'images/callbtn.png',
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              ChatPerson('images/friend1.png', 'How are ya guys?', '2:30'),
              ChatPerson('images/friend3.png', 'Fine here', '3:11'),
              ChatPersonRight(
                  'images/pic.png',
                  'Thinking about how to deal\nwith this client from hell...',
                  '22:08'),
              ChatPerson('images/friend2.png', 'Love Them', '23:11'),
            ],
          ),
        ),
      ),
    );
  }
}
