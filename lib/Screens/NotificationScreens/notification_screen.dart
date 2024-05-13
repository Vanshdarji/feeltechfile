import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: (Color(0xff1f203c)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            Text(
                              "Notification",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: main_Width * 0.12,
                          margin: EdgeInsets.only(right: 15, top: 5),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 1),
                              colors: [Color(0xFFFB6E37), Color(0xFF7D37FB)],
                              tileMode: TileMode.mirror,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 28,
                                    ))),
                          ),
                        ),
                      ],
                    ),
                  ),
              20.heightBox,
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Text(
                    "Today Release Movies",
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: main_Height * 0.20,
                      width: main_Width * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(avenger), fit: BoxFit.cover)),
                    ),
                    20.widthBox,
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Row(
                            children: [
                              Text(
                                "IMBD",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                                  .box
                                  .padding(EdgeInsets.all(6))
                                  .rounded
                                  .border(color: Colors.white)
                                  .make(),
                              10.widthBox,
                              Text(
                                "8.9",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        10.heightBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Dr. Strange",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Director: Dean Delois",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "Stars: Jay Baruchel, America",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "Ferrera, F. Murray Abraham",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  height: main_Height * 0.03,
                  color: Color.fromARGB(255, 79, 79, 79),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: main_Height * 0.20,
                      width: main_Width * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(Birds), fit: BoxFit.cover)),
                    ),
                    20.widthBox,
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Row(
                            children: [
                              Text(
                                "IMBD",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                                  .box
                                  .padding(EdgeInsets.all(6))
                                  .rounded
                                  .border(color: Colors.white)
                                  .make(),
                              10.widthBox,
                              Text(
                                "7.8",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        10.heightBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Corpsc Bride",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Director: joe Cornish",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "Stars: Jay Baruchel, America",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "Ferrera, F. Murray Abraham",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              30.heightBox,
              ]).box.color(Color(0xff2e3350)).bottomRounded().make(),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column
                (crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    "Register your Ticket for Upcoming Movie",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Container(
                        height: main_Height * 0.20,
                        width: main_Width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(Jungle), fit: BoxFit.cover)),
                      ),
                      20.widthBox,
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Row(
                              children: [
                                Text(
                                  "IMBD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                                    .box
                                    .padding(EdgeInsets.all(6))
                                    .rounded
                                    .border(color: Colors.white)
                                    .make(),
                                10.widthBox,
                                Text(
                                  "8.9",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          10.heightBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Avengers Marvels",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Director: M. Night Shayamlan",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 13),
                              ),
                              Text(
                                "Stars: Jay Baruchel, America",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 13),
                              ),
                              Text(
                                "Ferrera, F. Murray Abraham",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: main_Height * 0.03,
                  color: Color.fromARGB(255, 79, 79, 79),
                ),
              ),
                  Row(
                    children: [
                      Container(
                        height: main_Height * 0.20,
                        width: main_Width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(strange), fit: BoxFit.cover)),
                      ),
                      20.widthBox,
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Row(
                              children: [
                                Text(
                                  "IMBD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                                    .box
                                    .padding(EdgeInsets.all(6))
                                    .rounded
                                    .border(color: Colors.white)
                                    .make(),
                                10.widthBox,
                                Text(
                                  "7.8",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          10.heightBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Corpsc Bride",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Director: joe Cornish",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              Text(
                                "Stars: Jay Baruchel, America",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              Text(
                                "Ferrera, F. Murray Abraham",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ])
              )
            ],
          ),
        ),
      ),
    );
  }
}
