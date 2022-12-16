import 'package:chatty_app/pages/chat.dart';
import 'package:chatty_app/widget/chat_tile.dart';
import 'package:chatty_app/widget/group_tile.dart';
import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff29CB9E),
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'images/pic.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                      fontSize: 16,
                      color: lightBlueColor,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleStyle,
                      ),
                      ChatTile(
                        image: 'images/friend1.png',
                        name: 'Joshuer',
                        text: 'Sorry, you’re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        image: 'images/friend2.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Group',
                        style: titleStyle,
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: ((context) {
                                return Chat();
                              })),
                            );
                          }),
                          style: ElevatedButton.styleFrom(
                            primary: whiteColor,
                            elevation: 0.0,
                            shadowColor: Colors.transparent,
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                          ),
                          child: GroupTile(
                            image: 'images/icon.png',
                            name: 'Jakarta Fair',
                            text: 'Love them',
                            time: '11:11',
                            unread: false,
                          ),
                        ),
                      ),
                      GroupTile(
                        image: 'images/icon2.png',
                        name: 'Angga',
                        text: 'Here here we can go...',
                        time: '7:11',
                        unread: true,
                      ),
                      GroupTile(
                        image: 'images/icon3.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
