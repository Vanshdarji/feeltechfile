import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HomeScreens/profile_screen.dart';
import 'package:vanshtask1/Screens/MoviesScreens/movie_screen.dart';
import 'package:vanshtask1/Screens/NotificationScreens/notification_screen.dart';
import 'package:vanshtask1/Screens/RatingsScreen/favourite_screen.dart';
import 'package:vanshtask1/Screens/TheatersScreens/theater_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int initIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MoviesScreen(),
    NotificationScreen(),
    MoviesFavorite(),
    Theater(),
    MainScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      initIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff1f203c),
      body: _widgetOptions[initIndex],
      bottomNavigationBar: CircleNavBar(
        circleShadowColor: Color(0xff2e3350),
        shadowColor: Color(0xff2e3350),
        activeIcons: const [
          // Icon(Icons.person, color: Colors.deepPurple),
          Icon(Icons.movie, color: Colors.white),
          Icon(Icons.notifications_active, color: Colors.white),
          Icon(Icons.star,color: Colors.white,),
          Icon(Icons.theaters,color: Colors.white,),
          Icon(Icons.person,color: Colors.white,)
        ],
        inactiveIcons: const [
          Icon(Icons.movie,color: Colors.white,),
          Icon(Icons.notifications_active,color: Colors.white,),
          Icon(Icons.star,color: Colors.white,),
          Icon(Icons.theaters,color: Colors.white,),
          Icon(Icons.account_box,color: Colors.white,) // Text("Like"),
        ],
        color: Color(0xff2e3350),
        circleColor: Color(0xff2e3350),
        height: main_Height*0.08,
        circleWidth: (main_Height*0.08)*0.8,
        activeIndex: initIndex,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom:20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        // shadowColor: Colors.deepPurple,
        // circleShadowColor: Colors.deepPurple,
        elevation: 10,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xff2e3350),Color(0xff2e3350)],
        ),

        circleGradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xffff0050), Color(0xffff0050)],
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
