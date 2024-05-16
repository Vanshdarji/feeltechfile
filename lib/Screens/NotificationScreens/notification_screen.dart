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
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff2e3350),
              ),
              child:  Padding(
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
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15, top: 5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8, 1),
                                    colors: [Color(0xFFFB6E37), Color(0xFF7D37FB)],
                                    tileMode: TileMode.mirror,
                                  ),
                                ),
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 28,color: Colors.white,))
                              ),
                            ],
                          ),
                        ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                color: Color(0xff2e3350),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
              ),
                      child: Column(
                        children: [
                      20.heightBox,
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 25)),
                          Text(
                            "Today Release Movies",
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      15.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 180,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(avenger), fit: BoxFit.cover)),
                            ),
                            20.widthBox,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.all(Radius.circular(8)),
                                              border: Border.all(color: Colors.white),
                                            ),
                                          child: Text(
                                            "IMBD",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        10.widthBox,
                                        Text(
                                          "8.9",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                  10.heightBox,
                                  Text(
                                    "The Avengers Endgame The Times of",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Director: Dean Delois",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Stars: Jay Baruchel, America",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Ferrera, F. Murray Abraham",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          height: 25,
                          color: Color.fromARGB(255, 79, 79, 79),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 180,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(Birds), fit: BoxFit.cover)),
                            ),
                            20.widthBox,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(8)),
                                            border: Border.all(color: Colors.white),
                                          ),
                                          child: Text(
                                            "IMBD",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        10.widthBox,
                                        Text(
                                          "7.8",
                                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                  10.heightBox,
                                  Text(
                                    "The Blue birds Adventures World",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Director: joe Cornish",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Stars: Jay Baruchel, America",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Ferrera, F. Murray Abraham",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      30.heightBox,
                      ]),
                    ),
                    15.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column
                      (crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                          "Register your Ticket for Upcoming Movie",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        20.heightBox,
                        Row(
                          children: [
                            Container(
                              height: 180,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(Jungle), fit: BoxFit.cover)),
                            ),
                            20.widthBox,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(8)),
                                          border: Border.all(color: Colors.white),
                                        ),
                                          child: Text(
                                            "IMBD",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        10.widthBox,
                                        Text(
                                          "8.9",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                  10.heightBox,
                                  Text(
                                    "The Jungle Adventur Of The Men",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Director: M. Night Shayamlan",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Stars: Jay Baruchel, America",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Ferrera, F. Murray Abraham",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 25,
                        color: Color.fromARGB(255, 79, 79, 79),
                      ),
                    ),
                        Row(
                          children: [
                            Container(
                              height: 180,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(strange), fit: BoxFit.cover)),
                            ),
                            20.widthBox,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(8)),
                                          border: Border.all(color: Colors.white),
                                        ),
                                          child: Text(
                                            "IMBD",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        10.widthBox,
                                        Text(
                                          "7.8",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                  10.heightBox,
                                  Text(
                                    "The Dr. Strange Time Of Games",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Director: joe Cornish",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Stars: Jay Baruchel, America",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Ferrera, F. Murray Abraham",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13,fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ])
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
