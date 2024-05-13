import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/images.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:widget_zoom/widget_zoom.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController _SearchLocation = TextEditingController();
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
              // Padding(padding: EdgeInsets.only(top: 20)),
              // padding: const EdgeInsets.all(2.0),
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
                          "Languages",
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
                                onPressed: () {},
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
              50.heightBox,
              Container(
                color: (Color(0xff2e3350)),
                height: main_Height * 0.60,
                width: main_Width * 0.75,
                child: InteractiveViewer(
                  child: Image.asset(
                    "Assets/images/Map.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ).box.roundedFull.make(),
              25.heightBox,
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: main_Width * 0.70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        colors: [Color(0xFFFB6E37), Color(0xFF7D37FB)],
                        tileMode: TileMode.mirror,
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          //     builder: (context) => MainScreen()));
                        },
                        child: Text(
                          "Use My Location",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
