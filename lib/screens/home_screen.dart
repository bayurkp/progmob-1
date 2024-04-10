import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:progmob_1/constants/app_colors.dart';
import 'package:progmob_1/widgets/contact_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  Map<String, String> contacts = {
    'David Beckham': 'david@example.com',
    'Ryan Giggs': 'ryan@example.com',
    'Paul Scholes': 'paul@example.com',
    'Eric Cantona': 'eric@example.com',
    'Roy Keane': 'roy@example.com',
    'Cristiano Ronaldo': 'ronaldo@example.com',
    'Wayne Rooney': 'wayne@example.com',
    'Gary Neville': 'gary@example.com',
    'Peter Schmeichel': 'peter@example.com',
    'Bobby Charlton': 'bobby@example.com',
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, "/");
        break;
      case 1:
        Navigator.pushNamed(context, "/login");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hi, Bayu!',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.key),
            label: 'Auth',
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            right: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.1, 0.6],
                  colors: <Color>[
                    AppColors.secondary.withOpacity(0.5),
                    AppColors.primary.withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                color: AppColors.white.withOpacity(0.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: contacts.entries.map((entry) {
                String name = entry.key;
                String email = entry.value;
                return Column(
                  children: <Widget>[
                    ContactTile(name: name, email: email),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
