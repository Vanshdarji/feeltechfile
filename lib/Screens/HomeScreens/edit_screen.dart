import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/HelperScreen/class.dart';
import 'package:velocity_x/velocity_x.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController Fname = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Country = TextEditingController();
  UserProfile userProfile = UserProfile(
      name: 'Theodora Handle',
      email: 'Theodora@gmail.com',
      bio: 'Washington jackson',
      Country: 'Pennsylvania');

  @override
  void initState() {
    super.initState();
    Fname.text = userProfile.name;
    Email.text = userProfile.email;
    Address.text = userProfile.bio;
    Country.text = userProfile.Country;
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        userProfile.name = Fname.text;
        userProfile.email = Email.text;
        userProfile.bio = Address.text;
        userProfile.Country = Country.text;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Profile Saved')));
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f203c),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                color: Color(0xff1f203c),
                child: Padding(
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
                            "Edit Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 68, // Image radius
                        backgroundImage: AssetImage(
                            "Assets/images/3d-illustration-human-avatar-profile_23-2150671116.jpg"),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Change Profile Pictures",
                            style: TextStyle(
                                color: Colors.orange,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.orange),
                          )),
                      20.heightBox,
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: Fname,
                          decoration: InputDecoration(
                            label: Text(
                              "Full nam",
                              style: TextStyle(
                                  color: Color(0xffb0b6ba), fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        child: TextFormField(
                          style:
                              TextStyle(color: Colors.white, fontSize: 14),
                          controller: Email,
                          decoration: InputDecoration(
                            label: Text(
                              "Email ID",
                              style: TextStyle(
                                  color: Color(0xffb0b6ba), fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        child: TextFormField(
                          style:
                              TextStyle(color: Colors.white, fontSize: 14),
                          controller: Address,
                          decoration: InputDecoration(
                            label: Text(
                              "Address",
                              style: TextStyle(
                                  color: Color(0xffb0b6ba), fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 55,
                        child: TextFormField(
                          style:
                              TextStyle(color: Colors.white, fontSize: 14),
                          controller: Country,
                          decoration: InputDecoration(
                            label: Text(
                              "Country",
                              style: TextStyle(
                                  color: Color(0xffb0b6ba), fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      50.heightBox,
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
                                  _saveProfile();
                                },
                                child: Text(
                                  "Save Changes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
