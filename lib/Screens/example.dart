import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/class.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:vanshtask1/Screens/TheatersScreens/search_screen.dart';
import 'package:velocity_x/velocity_x.dart';



class MyAppss extends StatefulWidget {
  @override
  State<MyAppss> createState() => _MyAppssState();
}

class _MyAppssState extends State<MyAppss> {
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

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            // title: Text('Fixed Row Example'),
            backgroundColor: Colors.blue,
            expandedHeight: 100.0, // Adjust this as per your need
            flexibleSpace: FlexibleSpaceBar(
              background: Row(
                children: <Widget>[
                  Container(
                    width: 100.0, // Fixed width for the row
                    color: Colors.yellow,
                    child: Center(child: Text('Fixed')),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Center(child: Text('Scrollable Content')),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
