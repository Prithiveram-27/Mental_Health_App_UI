// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../Components/EmojiComponent.dart';
import '../Components/listTile.dart';
import '../models/Exercise.dart';

class Home_Page extends StatefulWidget {
  Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final List<Exercise> execList = [
    Exercise(
        Colors.orange,
        "Speaking skills",
        "16 Exercises",
        Icon(
          Icons.spoke,
          color: Colors.white,
        )),
    Exercise(
        Colors.purple,
        "Reading speed",
        "8 Exercises",
        Icon(
          Icons.read_more,
          color: Colors.white,
        )),
    Exercise(
        Colors.green,
        "Listening",
        "12 Exercises",
        Icon(
          Icons.hearing,
          color: Colors.white,
        )),
    Exercise(
        Colors.yellow,
        "Writing skills",
        "16 Exercises",
        Icon(
          Icons.create,
          color: Colors.white,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Prithive!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "2 sept 2022",
                            style: TextStyle(
                              color: Colors.blue[100],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  ///section 2
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[600],
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //section 3
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            EmojiComponent(
                              emoji: '😕',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Bad",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            EmojiComponent(
                              emoji: '🙂',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Fine",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            EmojiComponent(
                              emoji: '😀',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Well",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            EmojiComponent(
                              emoji: '😄',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Excellent",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Center(
                  child: Column(
                    children: [
                      Divider(
                        indent: 150,
                        endIndent: 150,
                        color: Colors.grey,
                        height: 5,
                        thickness: 5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: execList.length,
                          itemBuilder: ((context, index) {
                            return kListTile(
                              Color: execList[index].color,
                              icon: execList[index].icon,
                              subTitle: execList[index].subTitle,
                              title: execList[index].title,
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
