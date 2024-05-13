import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/class.dart';
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
  int _currentIndex = 0;
  // final List<String> images = [Jungle, avenger, Birds];
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff1f203c),
          body:  Column(
              children: [
                Container(
                  color:Color(0xff2e3350) ,
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
                                  colors: [
                                    Color(0xFFFB6E37),
                                    Color(0xFF7D37FB)
                                  ],
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
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff2e3350),
                              borderRadius:
                                  BorderRadius.vertical(bottom: Radius.circular(20))),
                          child: Column(
                            children: [
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
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                              color: Colors.white, fontSize: 10),
                                        ))
                                  ],
                                ),
                              ),
                              Column(children: [
                                CarouselSlider.builder(
                                  itemCount: carouselItems.length,
                                  options: CarouselOptions(
                                    height: 380,
                                    padEnds: false,
                                    enlargeCenterPage: true,
                                    disableCenter: true,
                                    enlargeFactor: 0.35,
                                    aspectRatio: 2.0,
                                    viewportFraction: 0.7,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, _) {
                                      setState(() {
                                        _currentIndex = index;
                                      });
                                    },
                                  ),
                                  itemBuilder: (context, index, realIndex) {
                                    // final item = carouselItems[index];
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 300,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                image: DecorationImage(
                                                  image: AssetImage(images[index]),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Text(
                                              "${names[index]}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  sub[index],
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      top: 1,
                                                      right: 5,
                                                      left: 5,
                                                      bottom: 2),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(8)),
                                                    border:
                                                        Border.all(color: Colors.white),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 12,
                                                      ),
                                                      Text(
                                                        "4.3",
                                                        maxLines: 1,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w500),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: carouselItems.map((item) {
                                    int index = carouselItems.indexOf(item);
                                    return Container(
                                      width: 8.0,
                                      height: 8.0,
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 2.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _currentIndex == index
                                            ? Colors.orange
                                            : Colors.grey,
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        20.heightBox,
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
                                    style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w400),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          height: main_Height * 0.35,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: images2.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: main_Width * 0.45,
                                        height: main_Height * 0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          image: DecorationImage(
                                            image: AssetImage(images2[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        "${names[index]}",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
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
                                            "${rating[index]}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                          ),
                                          10.widthBox,
                                          Row(
                                            children: [
                                              Text(
                                                "4.3",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,)
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 10,
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
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
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "VIEW ALL",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.w400),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          height: main_Height * 0.35,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: images3.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: main_Width * 0.45,
                                        height: main_Height * 0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          image: DecorationImage(
                                            image: AssetImage(images3[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        "${names[index]}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      5.heightBox,
                                      Row(
                                        children: [
                                          Text(
                                            "${rating[index]}",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400),
                                          ),
                                          10.widthBox,
                                          Row(
                                            children: [
                  
                                              Text(
                                                "4.3",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 10,
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
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
