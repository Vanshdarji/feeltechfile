import 'package:flutter/material.dart';
import 'package:vanshtask1/Screens/BottomScreens/bottom_screen.dart';
import 'package:vanshtask1/Screens/SplashScreen/splash_screen.dart';
import 'package:vanshtask1/Screens/TheatersScreens/place_info_screen.dart';
import 'package:vanshtask1/Screens/TheatersScreens/place_screen.dart';
import 'package:vanshtask1/Screens/TheatersScreens/theater_screen.dart';
import 'package:vanshtask1/Screens/TicketScreen/order_conformation_screen.dart';
import 'package:vanshtask1/Screens/TicketScreen/payment_screen.dart';
import 'package:vanshtask1/Screens/example.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:OrderConfirmation(),
    );
  }
}
