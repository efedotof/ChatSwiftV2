import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mychats2/Frontend/HomePage/Screens/OneScreen.dart';
import 'package:mychats2/Frontend/HomePage/Screens/ThreeScreen.dart';
import 'package:mychats2/Frontend/HomePage/Screens/TwoScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final List<Widget> _screens = [
    const OneScreen(),
    const TwoScreen(),
    const ThreeScreen(),
  ];

  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
       onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF6F4FF),
        body: _screens[_currentIndex],
    
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
        
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.message_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.history_toggle_off_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.call),
              label: '',
            ),
          ])    
      ),
    );
  }
}








