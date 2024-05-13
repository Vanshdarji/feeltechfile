import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vanshtask1/Screens/HelperScreen/class.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/HelperScreen/list.dart';
import 'package:vanshtask1/Screens/RatingsScreen/favourite_screen.dart';
import 'package:vanshtask1/Screens/MoviesScreens/list_screen.dart';
import 'package:vanshtask1/Screens/MoviesScreens/movie_search.dart';
import 'package:vanshtask1/Screens/example.dart';
import 'package:velocity_x/velocity_x.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  int _currentIndex = 0;
  final List<String> images = [Jungle, avenger, Birds];
  final List<String> names = [
    'TCL Chinese Theater',
    'Dolby Theaterss',
    'Inox Theaterss',
  ];
  final List<String> rating = [
    'Rating',
    'Rating',
    'Rating',
  ];

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1f203c),
      body: Column(
        children: [
          Container(
            child:Padding(
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
                          "Movies",
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
                      // child: Icon(Icons.search,color: Colors.white,),
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
                                          builder: (context) => MovieSearch()));
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
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              50.widthBox,
                              Text(
                                "Trending",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              10.widthBox,
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MoviesList()));
                                  },
                                  child: Text(
                                    "Popular",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ),
                          CarouselSlider.builder(
                            itemCount: carouselItems.length,
                            options: CarouselOptions(
                              height: 500,
                              padEnds: false,
                              enlargeCenterPage: true,
                              disableCenter: true,
                              enlargeFactor: 0.4,
                              aspectRatio: 2.0,
                              viewportFraction: 0.65,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, _) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                            itemBuilder: (context, index, realIndex) {
                              final item = carouselItems[index];
                              return
                                  // padding: EdgeInsets.only(right: 20),
                                  // decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                                  Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 400,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(item.imagePath),
                                              fit: BoxFit.cover)),
                                    ),
                                    10.heightBox,
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 1,right: 10,left: 10,bottom: 6),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                            border: Border.all(color: Colors.white),
                                          ),
                                          child: Text(
                                            item.rating,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                        10.widthBox,
                                        Text(
                                          item.rate,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    3.heightBox,
                                    Text(
                                      "${item.name} Marvels fantasy",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      item.Subtitle,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    )
                                  ],
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
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 25)),
                        Text(
                          "Trailers",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    10.heightBox,
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: main_Height * 0.30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
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
                                    Container(
                                      padding: EdgeInsets.only(top: 1,right: 10,left: 10,bottom: 6),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                            border: Border.all(color: Colors.white),
                                          ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 10,
                                          ),
                                          2.widthBox,
                                          Text(
                                            "4.3",
                                            style: TextStyle(
                                              fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
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
        ],
      ),
    ));
  }
}
