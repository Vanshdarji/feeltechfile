import 'dart:math';

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/TicketScreen/payment_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class TicketBooking extends StatefulWidget {
  const TicketBooking({super.key});

  @override
  State<TicketBooking> createState() => _TicketBookingState();
}

class _TicketBookingState extends State<TicketBooking> {
  final List<bool> _selectedVegetables = <bool>[false, true, false];
  List<Widget> vegetables = <Widget>[
    // Text(''),
  ];
  List<List<bool>> _seats = List.generate(
    6,
    (_) => List.generate(6, (_) => false),
  ); // Initially, all seats are available

  void _toggleSeat(int row, int col) {
    setState(() {
      _seats[row][col] = !_seats[row][col]; // Toggle seat selection
    });
  }

  bool vertical = false;

  bool box = true;
  bool box2 = false;
  bool box3 = false;
  bool box4 = false;
  bool box5 = true;
  bool box6 = false;
  bool box7 = false;
  bool box8 = false;
  bool box9 = true;
  bool box10 = false;
  bool box11 = false;

  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f203c),
        body: Column(
          children: [
            Container(
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
                          "Ticket Booking",
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
                    20.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                          ),
                          color: Color(0xff2e3350),
                        ),
                        child: EasyDateTimeLine(
                          initialDate: DateTime.now(),
                          headerProps: const EasyHeaderProps(
                            selectedDateStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                            dateFormatter: DateFormatter.fullDateDayAsStrMY(),
                          ),
                          dayProps: const EasyDayProps(
                            inactiveMothStrStyle:
                                TextStyle(color: Colors.white),
                            height: 55,
                            width: 50,
                            dayStructure: DayStructure.dayNumDayStr,
                            borderColor: Color(0xff2e3350),
                            inactiveDayStrStyle: TextStyle(color: Colors.white),
                            inactiveDayNumStyle: TextStyle(color: Colors.white),
                            activeDayStyle: DayStyle(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFF09869),
                                    Color(0xFFC729B2),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.heightBox,
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          "Venue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    10.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 230,
                        decoration: BoxDecoration(
                            color: Color(0xff2e3350),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30))),
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            20.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
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
                                        width: main_Width * 0.22,
                                        height: 50,
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
                                                : [
                                                    Color(0xff1f203c),
                                                    Color(0xff1f203c)
                                                  ],
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Text(
                                          "3D",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box2 = !box2;
                                    });
                                  },
                                  child: Stack(
                                    alignment: box2
                                        ? Alignment.centerRight
                                        : Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: main_Width * 0.30,
                                        height: 50,
                                        alignment: Alignment
                                            .center, // Alignment as center
                                        decoration: BoxDecoration(
                                          // TODO: you can change here gradient color
                                          gradient: LinearGradient(
                                            colors: box2
                                                ? [
                                                    const Color(0xFFF09869),
                                                    const Color(0xFFC729B2),
                                                  ]
                                                : [
                                                    Color(0xff1f203c),
                                                    Color(0xff1f203c)
                                                  ],
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Text(
                                          "MX4D",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box3 = !box3;
                                    });
                                  },
                                  child: Stack(
                                    alignment: box3
                                        ? Alignment.centerRight
                                        : Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: main_Width * 0.30,
                                        height: 50,
                                        alignment: Alignment
                                            .center, // Alignment as center
                                        decoration: BoxDecoration(
                                          // TODO: you can change here gradient color
                                          gradient: LinearGradient(
                                            colors: box3
                                                ? [
                                                    const Color(0xFFF09869),
                                                    const Color(0xFFC729B2),
                                                  ]
                                                : [
                                                    Color(0xff1f203c),
                                                    Color(0xff1f203c)
                                                  ],
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Text(
                                          "IMAX'3D",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            20.heightBox,
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Text(
                                  "Palace albany theatre",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            20.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box4 = !box4;
                                    });
                                  },
                                  child: Container(
                                    width: main_Width * 0.20,
                                    height: 70,
                                    alignment:
                                        Alignment.center, // Alignment as center
                                    decoration: BoxDecoration(
                                      // TODO: you can change here gradient color
                                      gradient: LinearGradient(
                                        colors: box4
                                            ? [
                                                const Color(0xFFF09869),
                                                const Color(0xFFC729B2),
                                              ]
                                            : [
                                                Color(0xff1f203c),
                                                Color(0xff1f203c)
                                              ],
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "7:30",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "AM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box5 = !box5;
                                    });
                                  },
                                  child: Container(
                                    width: main_Width * 0.20,
                                    height: 70,
                                    alignment:
                                        Alignment.center, // Alignment as center
                                    decoration: BoxDecoration(
                                      // TODO: you can change here gradient color
                                      gradient: LinearGradient(
                                        colors: box5
                                            ? [
                                                const Color(0xFFF09869),
                                                const Color(0xFFC729B2),
                                              ]
                                            : [
                                                Color(0xff1f203c),
                                                Color(0xff1f203c)
                                              ],
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "9:00",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "AM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box6 = !box6;
                                    });
                                  },
                                  child: Container(
                                    width: main_Width * 0.20,
                                    height: 70,
                                    alignment:
                                        Alignment.center, // Alignment as center
                                    decoration: BoxDecoration(
                                      // TODO: you can change here gradient color
                                      gradient: LinearGradient(
                                        colors: box6
                                            ? [
                                                const Color(0xFFF09869),
                                                const Color(0xFFC729B2),
                                              ]
                                            : [
                                                Color(0xff1f203c),
                                                Color(0xff1f203c)
                                              ],
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4:30",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "PM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      box7 = !box7;
                                    });
                                  },
                                  child: Container(
                                    width: main_Width * 0.20,
                                    height: 70,
                                    alignment:
                                        Alignment.center, // Alignment as center
                                    decoration: BoxDecoration(
                                      // TODO: you can change here gradient color
                                      gradient: LinearGradient(
                                        colors: box7
                                            ? [
                                                const Color(0xFFF09869),
                                                const Color(0xFFC729B2),
                                              ]
                                            : [
                                                Color(0xff1f203c),
                                                Color(0xff1f203c)
                                              ],
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "9:00",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "PM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    10.heightBox,
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          "Members",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    10.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(15)),
                          color: Color(0xff2e3350),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  box8 = !box8;
                                });
                              },
                              child: Container(
                                width: main_Width * 0.20,
                                height: 70,
                                alignment:
                                    Alignment.center, // Alignment as center
                                decoration: BoxDecoration(
                                  // TODO: you can change here gradient color
                                  gradient: LinearGradient(
                                    colors: box8
                                        ? [
                                            const Color(0xFFF09869),
                                            const Color(0xFFC729B2),
                                          ]
                                        : [
                                            Color(0xff1f203c),
                                            Color(0xff1f203c)
                                          ],
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "+",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Friends",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  box9 = !box9;
                                });
                              },
                              child: Container(
                                width: main_Width * 0.20,
                                height: 70,
                                alignment:
                                    Alignment.center, // Alignment as center
                                decoration: BoxDecoration(
                                  // TODO: you can change here gradient color
                                  gradient: LinearGradient(
                                    colors: box9
                                        ? [
                                            const Color(0xFFF09869),
                                            const Color(0xFFC729B2),
                                          ]
                                        : [
                                            Color(0xff1f203c),
                                            Color(0xff1f203c)
                                          ],
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "+",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.family_restroom,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Family",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  box10 = !box10;
                                });
                              },
                              child: Container(
                                width: main_Width * 0.20,
                                height: 70,
                                alignment:
                                    Alignment.center, // Alignment as center
                                decoration: BoxDecoration(
                                  // TODO: you can change here gradient color
                                  gradient: LinearGradient(
                                    colors: box10
                                        ? [
                                            const Color(0xFFF09869),
                                            const Color(0xFFC729B2),
                                          ]
                                        : [
                                            Color(0xff1f203c),
                                            Color(0xff1f203c)
                                          ],
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "+",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.person_3,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Couple",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  box11 = !box11;
                                });
                              },
                              child: Container(
                                width: main_Width * 0.20,
                                height: 70,
                                alignment:
                                    Alignment.center, // Alignment as center
                                decoration: BoxDecoration(
                                  // TODO: you can change here gradient color
                                  gradient: LinearGradient(
                                    colors: box11
                                        ? [
                                            const Color(0xFFF09869),
                                            const Color(0xFFC729B2),
                                          ]
                                        : [
                                            Color(0xff1f203c),
                                            Color(0xff1f203c)
                                          ],
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "+",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.man,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Man",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    20.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: main_Width * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                              ),
                              10.widthBox,
                              Text(
                                "Reserved",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: main_Width * 0.08,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              10.widthBox,
                              Text(
                                "Available",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: main_Width * 0.08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(colors: [
                                      Color(0xFFFB6E37),
                                      Color(0xFF7D37FB)
                                    ])),
                              ),
                              10.widthBox,
                              Text(
                                "Selected",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Container(
                        height: 230,
                        width: main_Width * 0.70,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: _seats[2].length,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                          ),
                          itemCount: _seats.length * _seats[2].length,
                          itemBuilder: (BuildContext context, int index) {
                            int row = index ~/ _seats[2].length;
                            int col = index % _seats[2].length;
                            return GestureDetector(
                                onTap: () {
                                  _toggleSeat(row, col);
                                },
                                child: Container(
                                  color: _seats[row][col]
                                      ? Color(0xff1f203c)
                                      : Colors.white,
                                ).box.border(color: Colors.white).make());
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "SEAT NO: F6, F7, F8",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    20.heightBox,
                    Center(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentScreen()));
                            },
                            child: Text(
                              "Choose your seats",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                      ),
                    ),
                    30.heightBox,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
