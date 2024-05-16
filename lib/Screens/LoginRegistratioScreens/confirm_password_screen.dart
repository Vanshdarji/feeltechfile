import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/LoginRegistratioScreens/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController Password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool choice = false;
  bool choice2 = false;

  void createConfirm() async{
    String password = Password.text.trim();
    String cPassword = confirmPassword.text.trim();
    if (password != cPassword) {
      print(ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password Not Match?"),
        backgroundColor: Colors.red,
      )));
    } else if(password==cPassword){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
  }}

    @override
    Widget build(BuildContext context) {
      double main_Width = MediaQuery
          .of(context)
          .size
          .width;
      double main_Height = MediaQuery
          .of(context)
          .size
          .height;
      return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff1f203c),
            body: Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 40,),
                  Image.asset(
                    "Assets/images/centre.png", width: 100,fit: BoxFit.fitWidth,),
                  Image.asset(
                    "Assets/images/Ocodile.png", width: 100,fit: BoxFit.fitWidth),
                  5.heightBox,
                  Image.asset("Assets/images/Movie Booking App.png",
                    width: 130,fit: BoxFit.fitWidth),
                  60.heightBox,
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "Assets/images/Welcome..!.png",
                      width: 140,fit: BoxFit.fitWidth
                    ),
                  ),
                  10.heightBox,
                  Text(
                    "Reset Your Password",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  10.heightBox,
                  Column(children: [
                    12.heightBox,
                    Padding(
                      padding: EdgeInsets.only(bottom: 10,),
                      child: TextFormField(
                        controller: Password,
                        obscureText: choice,
                        textInputAction: TextInputAction.go,
                        style: TextStyle(fontSize: 14,
                            letterSpacing: 2,
                            color: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter New Password';
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
                            prefixIcon: Icon(
                              Icons.lock, color: Color(0xffb0b6ba),
                              size: 18,),
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 10),
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'New Password* ',
                            labelStyle: TextStyle(
                                color: Color(0xffb0b6ba), fontSize: 14,fontWeight: FontWeight.w400),
                            hintText: "Enter New Password",
                            hintStyle: TextStyle(
                                color: Color(0xffb0b6ba), fontSize: 14,fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        controller: confirmPassword,
                        obscureText: choice2,
                        textInputAction: TextInputAction.go,
                        style: TextStyle(fontSize: 14,
                            letterSpacing: 2,
                            color: Colors.white),
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
                            prefixIcon: Icon(
                              Icons.lock, color: Color(0xffb0b6ba),
                              size: 18,),
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 10),
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Confirm Password* ',
                            labelStyle: TextStyle(
                                color: Color(0xffb0b6ba), fontSize: 14,fontWeight:FontWeight.w400 ),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                                color: Color(0xffb0b6ba), fontSize: 14,fontWeight: FontWeight.w400),
                            suffixIcon: choice2 == false
                                ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    choice2 = true;
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
                                    choice2 = false;
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
                    30.heightBox,
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: main_Width * 0.75,
                        // height: main_Height*0.061,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(100)),
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
                                  createConfirm();
                              }
                            },
                            child: Text(
                              "Confirm Reset",
                              style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            )),
                      ),),
                    5.heightBox,
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Or Login using Social Media",
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                              color: Color(0xFFffffff),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
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
                    18.heightBox,
                  ])
                      .box
                      .color(Color(0xff2e3350))
                      .margin(EdgeInsets.symmetric(horizontal: 20))
                      .padding(EdgeInsets.symmetric(horizontal: 18))
                      .rounded
                      .make(),
                  20.heightBox,
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an Account?",
                          style: TextStyle(color: Color(0xff8c919b),fontSize: 14,fontWeight: FontWeight.w400),
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
                              style: TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xff8f3edf),fontSize: 14,fontWeight: FontWeight.w400),
                            ))
                      ])
                ]),
              ),
            )),
      );
    }
  }

