// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff341596),
      centerTitle: true,
      leading: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Icon(
          Icons.list_outlined,
          size: 30,
        ),
      ),
      title: const Text(
        "Home",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}
