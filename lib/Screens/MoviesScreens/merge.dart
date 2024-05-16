import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vanshtask1/Screens/HelperScreen/class.dart';
import 'package:velocity_x/velocity_x.dart';

class Merge extends StatefulWidget {
  const Merge({super.key});

  @override
  State<Merge> createState() => _MergeState();
}

class _MergeState extends State<Merge> {
  bool screen = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f203c),
        body: Column(
          children: [
            Icon(Icons.light, color: screen ? Colors.yellow : Colors.black),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      screen = !screen;
                    });
                  },
                  child: Container(
                    color: Colors.greenAccent,
                    child: Text(screen == false ? 'on' : 'off',style: TextStyle(
                      fontSize: screen==false?20:15
                    ),),
                  ),
                ),
                // Container(
                //   color: Colors.greenAccent,
                //   child: Text(screen==true?'on':'off'),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
