// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    "Home",
    "Men",
    "Women",
    "All",
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            onTap: (() {
              setState(() {
                _selectedIndex = index;
              });
            }),
            child: Container(
              width: 60,
              height: 32,
              margin: const EdgeInsets.only(right: 20, left: 0, top: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 194, 232, 250),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color:
                      _selectedIndex == index ? Colors.lightBlue : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
