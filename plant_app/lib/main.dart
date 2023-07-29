import 'package:flutter/material.dart';
import 'package:plant_app/components/screen/home/components/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Application',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 230, 222),
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 34, 105, 24)),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home_Screen(),
    );
  }
}