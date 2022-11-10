import 'package:flutter/material.dart';
import 'package:task_ui/pages/HomePage.dart';

void main() {
  /// Creating new void function to start project.
  runApp(const MyApp());
}
/// root class starts from here.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      /// setted home property to HomePage().
      home: HomePage(),
    );
  }
}
