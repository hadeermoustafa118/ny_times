import 'package:flutter/material.dart';
import 'package:nytimes/presentation/pages/home_screen.dart';

import 'core/locator/service_locator.dart';

void main() {
  ServiceLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
