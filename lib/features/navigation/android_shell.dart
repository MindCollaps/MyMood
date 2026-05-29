import '../emoji/android_emoji_page.dart';
import '../home/android_home_page.dart';
import '../settings/android_settings_page.dart';
import 'package:flutter/material.dart';

class AndroidShell extends StatefulWidget {
  const AndroidShell({super.key});

  @override
  State<AndroidShell> createState() => _AndroidShellState();
}

class _AndroidShellState extends State<AndroidShell> {
  int selectedIndex = 0;

  static const List<Widget> pages = [
    AndroidHomePage(),
    AndroidEmojiPage(),
    AndroidSettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Start',
          ),
          NavigationDestination(
            icon: Icon(Icons.emoji_emotions_outlined),
            selectedIcon: Icon(Icons.emoji_emotions),
            label: 'Emoji',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Mehr',
          ),
        ],
      ),
    );
  }
}