// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task_ui/pages/components/Categories.dart';
import 'package:task_ui/pages/components/Discount.dart';
import 'package:task_ui/pages/components/MyAppBar.dart';
import 'package:task_ui/pages/components/HomeTitle.dart';
import 'package:task_ui/pages/components/ProductCard.dart';

/// Using stateful widget for some basic animations.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    /// safe area for avoid unwanted overflow on notification bar of real device.
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        /// Creating App Bar.
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: MyAppBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                /// This widget is for Home Page's Categories on top.
                Categories(),

                /// This widget is for showing discount.
                Discount(),

                /// This Widget is for showing title of new collection
                HomeTitle(),

                /// This widget is for showing items.
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    bottom: 20,
                    top: 30,
                  ),
                  child: ProductCard(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: ProductCard(),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            onChange(value);
          }),
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: const TextStyle(
            color: Colors.blueAccent,
          ),
          unselectedItemColor: Colors.blueAccent,
          unselectedIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 121, 120, 120),
          ),
          showUnselectedLabels: true,
          selectedItemColor: Colors.blueAccent,
          selectedIconTheme: const IconThemeData(
            color: Colors.blueAccent,
          ),
          selectedLabelStyle: const TextStyle(
            color: Colors.blueAccent,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.file_present,
              ),
              label: "New",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
              ),
              label: "My Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  void onChange(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
