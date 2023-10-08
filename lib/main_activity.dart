import 'package:flutter/material.dart';
import 'package:inspire_me/view/screens/home_screen.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  int cIndex = 0;
  final screens = const [
    HomeScreen(),
    Center(child: Text("Search")),
    Center(child: Text("favourite")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inspire Me"),
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: cIndex,
        onTap: ((value) {
          setState(() {
            cIndex = value;
          });
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded), label: "list"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: "favorite")
        ],
      ),
      body: IndexedStack(
        index: cIndex,
        children: screens,
      ),
    );
  }
}
