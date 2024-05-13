import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/LoginRegistratioScreens/confirm_password_screen.dart';
import 'package:vanshtask1/Screens/LoginRegistratioScreens/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController Email = TextEditingController();
  final Emails=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Email.dispose();
  }
  void _printLatestValue() {
    final text = Email.text;
    print('Second text field: $text (${text.characters.length})');
  }
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    Email.addListener(_printLatestValue);
  }

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
            60.heightBox,
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "Assets/images/Welcome..!.png",
                width: main_Width * 0.35,
              ),
            ),
            10.heightBox,
            Text(
              "Reset Your Password",
              style: TextStyle(
                  color: Color(0xFFffffff),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            Column(children: [
              12.heightBox,
              Padding(
                padding: EdgeInsets.only(bottom: 10,),
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
              20.heightBox,
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: main_Width * 0.70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
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
                                      builder: (context) => ConfirmPassword()));
                            }
                          },
                          child: Text(
                            "Reset Passsword",
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
                    "Or Login using Social Media",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
              SizedBox(height: 18)
            ])
                .box
                .color(Color(0xff2e3350))
                .margin(EdgeInsets.all(24))
                .padding(EdgeInsets.symmetric(horizontal: 18))
                .rounded
                .make(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Don't have an Account?",
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
                      ),
          )),
    );
  }
}
