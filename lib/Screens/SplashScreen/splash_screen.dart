import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/SplashScreen/get_start_screen.dart';
import 'package:velocity_x/velocity_x.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  change() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GetStartScreen()),
      );
    });
  }
  bool choice=false;
  bool choice2=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    change();
  }

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff1f203c),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Image.asset("Assets/images/centre.png",width: main_Width*0.25,),
                  Image.asset("Assets/images/Ocodile.png", width: main_Width*0.25,),
                  5.heightBox,
                  Image.asset("Assets/images/Movie Booking App.png",width: main_Width*0.35,),
                  400.heightBox,
                  // Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Flexible(
                      child: Text(
                        "ENJOY YOUR MOVIE",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Flexible(
                      child: Text(
                        "Use filler text that has been edited for length and format to match",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                  5.heightBox,
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Flexible(
                      child: Text(
                        "the characteristics of real content as closely.",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Container(
                    child: choice == false
                    ? IconButton(
                    onPressed: () {
                                setState(() {
                                choice = true;
                                });
                                },
                                    icon: Icon(
                    Icons.stop_circle_outlined,
                    color: Color(0xfff3b246),
                    size: 20,
                                    ))
                    : IconButton(
                                  onPressed: () {
                          setState(() {
                          choice = false;
                          });
                          },
                              icon: Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 20,
                              )),
                  ),
                      choice2 == false
                          ? IconButton(
                          onPressed: () {
                            setState(() {
                              choice2 = true;
                            });
                          },
                          icon: Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 20
                          ))
                          : IconButton(
                          onPressed: () {
                            setState(() {
                              choice2 = false;
                            });
                          },
                          icon: Icon(
                            Icons.stop_circle_outlined,
                            color: Color(0xfff3b246),
                            size: 20,
                          )),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
