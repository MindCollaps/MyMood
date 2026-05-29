import '../emoji/ios_emoji_page.dart';
import '../home/ios_home_page.dart';
import '../settings/ios_settings_page.dart';
import 'package:flutter/cupertino.dart';

class IosShell extends StatelessWidget {
  const IosShell({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Start',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.smiley_fill),
            label: 'Emoji',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gear_alt_fill),
            label: 'Mehr',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return const IosHomePage();
              case 1:
                return const IosEmojiPage();
              default:
                return const IosSettingsPage();
            }
          },
        );
      },
    );
  }
}