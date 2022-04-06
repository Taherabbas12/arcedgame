import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'view/screens/home_screen.dart';
import 'view/screens/play_screen_3X3.dart';
import 'view/screens/play_screen_4X4.dart';
import 'view/screens/play_screen_5X5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
        'tic_3X3': (context) => PlayScreen3X3(),
        'tic_4X4': (context) => PlayScreen4X4(),
        'tic_5X5': (context) => const PlayScreen5X5(),
      },
    );
  }
}
