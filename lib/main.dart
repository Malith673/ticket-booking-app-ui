import 'package:flutter/material.dart';
import 'package:ticket_booking_ui/screens/bottom_navigation_bar.dart';
import 'package:ticket_booking_ui/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const BottomBar(),
      theme: ThemeData(primaryColor: primary),
      debugShowCheckedModeBanner: false,
    );
  }
}
