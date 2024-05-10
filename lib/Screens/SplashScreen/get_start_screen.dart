import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/LoginRegistratioScreens/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

bool choice2=false;
bool choice=false;

class _GetStartScreenState extends State<GetStartScreen> {
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
                350.heightBox,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: "     THERE'S ALWAYS ROOM",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      // 10.widthBox,
                      children: const <TextSpan>[
                        TextSpan(text: ' for a     ',style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: "     Transport People",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
                      // 10.widthBox,
                      children: const <TextSpan>[
                        TextSpan(text: ' TO ANOTHER WORLD     ',style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                50.heightBox,
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // margin: EdgeInsets.only(bottom: 0),
                      width: main_Width * 0.80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: <Color>[
                            const Color(0xFFF09869),
                            const Color(0xFFC729B2),
                            ],
                          tileMode: TileMode.mirror,
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Create An Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: main_Width * 0.05),
                          )),
                    )),
                30.heightBox,

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
                            Icons.circle,
                            color: Colors.white,
                            size: 20,
                          ))
                          : IconButton(
                          onPressed: () {
                            setState(() {
                              choice = false;
                            });
                          },
                          icon: Icon(
                            Icons.stop_circle_outlined,
                            color: Color(0xfffb6d36),
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
                            Icons.stop_circle_outlined,
                            color: Color(0xfffb6d36),
                            size: 20
                        ))
                        : IconButton(
                        onPressed: () {
                          setState(() {
                            choice2 = false;
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 20,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
