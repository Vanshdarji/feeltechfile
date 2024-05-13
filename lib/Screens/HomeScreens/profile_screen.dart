import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:vanshtask1/Screens/HomeScreens/country_screen.dart';
import 'package:vanshtask1/Screens/HomeScreens/edit_screen.dart';
import 'package:vanshtask1/Screens/HomeScreens/language_screen.dart';
import 'package:vanshtask1/Screens/HomeScreens/location_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool box = false;
  bool toggle = false;
  void _navigateToLanguageScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LanguageScreen()),
    );

    if (result != null) {
      setState(() {
        selectedLanguage = result;
      });
    }
  }
  void _naviagteToCountryScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CountryScreen()),
    );

    if (result != null) {
      setState(() {
        selectedCountry = result;
      });
    }
  }
  String selectedLanguage = 'English';
  String selectedCountry = 'India';
  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff1f203c),
          body: SingleChildScrollView(
            child: Column(
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
                              "Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditScreen()));
                            },
                            child: Text("Edit",style: TextStyle(color: Colors.purple,fontSize: 16),)),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    CircleAvatar(
                      radius: 48, // Image radius
                      backgroundImage: AssetImage(
                          "Assets/images/3d-illustration-human-avatar-profile_23-2150671116.jpg"),
                    ),
                    10.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Theodore Handle",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ).box.padding(EdgeInsets.only(right: 10)).make(),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 10,
                            ),
                            Text(
                              "Washington Jackson,Pennsylvania",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        5.heightBox,
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 10,
                            ),
                            5.widthBox,
                            Text(
                              "theodore@gmail.com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                30.heightBox,
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff2e3350),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            _navigateToLanguageScreen(context);
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.white, width: 1))),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Language',
                                  style: TextStyle(
                                      color: Color(0xffb0b6ba),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      selectedLanguage,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    5.widthBox,
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LocationScreen()));
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.white, width: 1))),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Location',
                                  style: TextStyle(
                                      color: Color(0xffb0b6ba),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box = !box;
                                    });
                                  },
                                  child: Stack(
                                    alignment: box
                                        ? Alignment.centerRight
                                        : Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: main_Width * 0.12,
                                        height: main_Height * 0.03,
                                        alignment: Alignment
                                            .center, // Alignment as center
                                        decoration: BoxDecoration(
                                          // TODO: you can change here gradient color
                                          gradient: LinearGradient(
                                            colors: box
                                                ? [
                                                    const Color(0xFFF09869),
                                                    const Color(0xFFC729B2),
                                                  ]
                                                : [Colors.grey, Colors.grey],
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(40)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(4),
                                        height: main_Height * 0.03,
                                        width: main_Width * 0.05,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 1))),
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Notification',
                                style: TextStyle(
                                    color: Color(0xffb0b6ba),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    toggle = !toggle;
                                  });
                                },
                                child: Stack(
                                  alignment: toggle
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  children: [
                                    Container(
                                      width: main_Width * 0.12,
                                      height: main_Height * 0.03,
                                      alignment: Alignment
                                          .center, // Alignment as center
                                      decoration: BoxDecoration(
                                        // TODO: you can change here gradient color
                                        gradient: LinearGradient(
                                          colors: toggle
                                              ? [
                                                  const Color(0xFFF09869),
                                                  const Color(0xFFC729B2),
                                                ]
                                              : [Colors.grey, Colors.grey],
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(40)),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(4),
                                      height: main_Height * 0.03,
                                      width: main_Width * 0.05,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _naviagteToCountryScreen(context);
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.white, width: 1))),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  selectedCountry,
                                  style: TextStyle(
                                      color: Color(0xffb0b6ba),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 1))),
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.only(bottom: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    color: Color(0xffb0b6ba),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            )
          )),
    );
  }
}
