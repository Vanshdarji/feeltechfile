import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/BottomScreens/bottom_screen.dart';
import 'package:vanshtask1/Screens/LoginRegistratioScreens/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController name = TextEditingController();
  bool choice = false;
  bool box = false;

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff1f203c),
          body: Form(
            key: _formkey,
                child: SingleChildScrollView(
              child: Center(
                  child: Column(children: [
                    SizedBox(height: 40,),
                    Image.asset("Assets/images/centre.png",width: main_Width*0.25,),
                    Image.asset("Assets/images/Ocodile.png", width: main_Width*0.25,),
                    5.heightBox,
                    Image.asset("Assets/images/Movie Booking App.png",width: main_Width*0.35,),
                30.heightBox,
                Text(
                  "Create Your Account",
                  style: TextStyle(
                      color: Color(0xFFffffff),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Column(children: [
                  12.heightBox,
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.go,
                      style: TextStyle(fontSize: 14, letterSpacing: 2,color: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your User Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail,color: Color(0xffb0b6ba),size: 18,),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 10,),
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText:'User Name*',labelStyle: TextStyle(color: Color(0xffb0b6ba),fontSize: 14),
                          hintText: "Enter Your Name",hintStyle: TextStyle(color: Color(0xffb0b6ba),fontSize: 14)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.go,
                      style: TextStyle(fontSize: 14, letterSpacing: 2,color: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Valid Email';
                        }
                        if (!value.contains(
                            RegExp(r'[@]'))) {
                          return 'Enter Valid Email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail,color: Color(0xffb0b6ba),size: 18,),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 10),
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText:'Email ID*',labelStyle: TextStyle(color: Color(0xffb0b6ba),fontSize: 14),
                          hintText: "Enter Your Email",hintStyle: TextStyle(color: Color(0xffb0b6ba),fontSize: 14)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      obscureText: choice,
                      textInputAction: TextInputAction.go,
                      style: TextStyle(fontSize: 14, letterSpacing: 2,color: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your Password';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        if (!value.contains(RegExp(r'[A-Z]'))) {
                          return 'Password must contain at least one uppercase letter';
                        }
                        if (!value.contains(RegExp(r'[a-z]'))) {
                          return 'Password must contain at least one lowercase letter';
                        }
                        if (!value.contains(RegExp(r'[0-9]'))) {
                          return 'Password must contain at least one number';
                        }
                        if (!value.contains(
                            RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                          return 'Password must contain at least one special character';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock,color: Color(0xffb0b6ba),size: 18,),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 10),
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Password* ',labelStyle: TextStyle(color: Color(0xffb0b6ba),fontSize: 14),
                          hintText: "Enter New Password",hintStyle: TextStyle(color: Color(0xffb0b6ba),fontSize: 14),
                          suffixIcon: choice == false
                              ? IconButton(
                              onPressed: () {
                                setState(() {
                                  choice = true;
                                });
                              },
                              icon: Icon(
                                Icons.visibility,
                                color: Color(0xffb0b6ba),
                                size: 18,
                              ))
                              : IconButton(
                              onPressed: () {
                                setState(() {
                                  choice = false;
                                });
                              },
                              icon: Icon(
                                Icons.visibility_off,
                                color: Color(0xffb0b6ba),
                                size: 18,
                              ))
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        box= !box;
                      });
                    },
                    child: Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            value:box ,
                            onChanged: (value) {
                              setState(() {
                                box = value!;
                              });
                            },
                          ),
                          RichText(text: TextSpan(text: 'I Read and aagree to ',
                          style: TextStyle(fontSize: 12),
                          children: [TextSpan(text: 'Terms & Conditions',style: TextStyle(color: Color(0xffea6752),fontSize: 12 ))]),
                          )
                        ]),
                  ),
                        5.heightBox,
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: main_Width * 0.70,
                        decoration: const BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 1),
                            colors: [
                              Color(0xFFFB6E37),
                              Color(0xFF7D37FB)
                            ],
                            tileMode: TileMode.mirror,
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                _formkey.currentState?.save();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BottomNavBar()));
                              }
                            },
                            child: Text(
                              "Register Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                      )),
                  5.heightBox,
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Or Register using Social Media",
                        style: TextStyle(
                            color: Colors.white,fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Assets/images/.png",
                        height: main_Height * 0.02,
                        width: main_Width * 0.04,
                      ),
                      20.widthBox,
                      Image.asset(
                        "Assets/images/.png",
                        height: main_Height * 0.05,
                        width: main_Width * 0.05,
                      )
                    ],
                  ),
                  18.heightBox
                ])
                    .box
                    .color(Color(0xff2e3350))
                    .margin(EdgeInsets.all(24))
                    .padding(EdgeInsets.symmetric(horizontal: 12))
                    .rounded
                    .make(),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(color: Color(0xff8c919b)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Color(0xff8f3edf)),
                      ))
                ])
              ])),
            )
          )),
    );
  }
}
