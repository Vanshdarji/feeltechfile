import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/TheatersScreens/place_info_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class TheaterPlace extends StatefulWidget {
  const TheaterPlace({super.key});

  @override
  State<TheaterPlace> createState() => _TheaterPlaceState();
}

class _TheaterPlaceState extends State<TheaterPlace> {
  final List<String> images = [Jungle, avenger, Birds];

  final List<String> names = [
    'TCL Chinese Theater',
    'Dolby Theaterss',
    'Inox Theaterss',
    // Add corresponding names for the images here
  ];
  final List<String> rating = [
    'Rating',
    'Rating',
    'Rating',
    // Add corresponding names for the images here
  ];
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1f203c),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xff2e3350),
          ),
          child: Padding(
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
                      "Place Theaters",
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
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 28,
                        ))),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Color(0xff1f203c),
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                            color: Color(0xff2e3350),
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20))),
                      )),
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(20))),
                          child: Column(children: [
                            // 30.heightBox,
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MovieTheaterInfo()));
                              },
                              child: SingleChildScrollView(
                                child: Container(
                                    height: 330,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 1,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            20.heightBox,
                                            Container(
                                              margin: EdgeInsets.only(left: 40),
                                              width: main_Width * 0.80,
                                              height: 258,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                image: DecorationImage(
                                                  image: AssetImage(Birds),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 35),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Palace Albany Theater",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  100.widthBox,
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 12,
                                                      ),
                                                      Text(
                                                        "4.8",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  )
                                                      .box
                                                      .roundedSM
                                                      .border(
                                                          color: Colors.white)
                                                      .make()
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 35)),
                                                Text(
                                                  "3D Digital Media & Ultra HD",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                            )
                                          ],
                                        );
                                      },
                                    )),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                20.heightBox,
                Divider(
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
                10.heightBox,
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Text(
                      "Related Theaters",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
                10.heightBox,
                Container(
                  height: 285,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: main_Width * 0.40,
                              height: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            8.heightBox,
                            Text(
                              names[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Row(
                              children: [
                                Text(
                                  rating[index],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.w400,fontSize: 14),
                                ),
                                10.widthBox,
                                Row(
                                  children: [
                                    Text(
                                      "4.3",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    5.widthBox,
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
