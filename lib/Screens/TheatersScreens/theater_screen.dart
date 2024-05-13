import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/TheatersScreens/search_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class Theater extends StatefulWidget {
  const Theater({super.key});

  @override
  State<Theater> createState() => _TheaterState();
}

class _TheaterState extends State<Theater> {
  final List<String> images = [Jungle, avenger, Birds];
  final List<String> images2 = [Marvel, cartoon, Birds];
  final List<String> images3 = [strange, Jungle, Marvel];

  final List<String> names = [
    'TCL Chinese Theater',
    'Dolby Theaterss',
    'Inox Theaterss',
    // Add corresponding names for the images here
  ];
  final List<String> sub = [
    'Landmark Hollywood',
    'High tech One',
    'Central Hall',
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
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Column(children: [
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
                                "Theaters",
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
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TheaterSearch()));
                                      },
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Near By",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "VIEW ALL",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              ))
                        ],
                      ),
                    ),
                    Container(
                        height: main_Height * 0.35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10)),
                                  Container(
                                    width: main_Width * 0.65,
                                    height: main_Height * 0.25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        sub[index],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      60.widthBox,
                                      Row(
                                        children: [
                                          // Padding(padding: EdgeInsets.only(left: 10)),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                          Text(
                                            "4.3",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                          .box
                                          .roundedSM
                                          .border(color: Colors.white)
                                          .make()
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        )),
                  ]).box.bottomRounded().color(Color(0xff2e3350)).make(),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle_rounded,
                            color: Colors.amber,
                            size: 12,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                            size: 8,
                          ),
                          20.widthBox,
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                            size: 8,
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "A/C Theaters",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "VIEW ALL",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              ))
                        ],
                      ),
                    ),
                  Container(
                padding: EdgeInsets.only(left: 10),
                height: main_Height * 0.30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images2.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: main_Width * 0.45,
                            height: main_Height * 0.20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(images2[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            names[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          5.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                rating[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              10.widthBox,
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ).box.roundedSM.border(color: Colors.white).make()
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Non A/c Theater",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "VIEW ALL",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              ))
                        ],
                      ),
                    ),
                  Container(
                padding: EdgeInsets.only(left: 10),
                height: main_Height * 0.30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images3.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: main_Width * 0.45,
                            height: main_Height * 0.20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(images3[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            names[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          5.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                rating[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              10.widthBox,
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ).box.roundedSM.border(color: Colors.white).make()
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
          )),
    );
  }
}
