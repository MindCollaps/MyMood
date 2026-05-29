import '../../shared/widgets/glass_card.dart';
import '../../shared/widgets/ios_glass_scaffold.dart';
import 'package:flutter/cupertino.dart';

class IosEmojiPage extends StatelessWidget {
  const IosEmojiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Emoji'),
      ),
      child: IosGlassScaffold(
        child: GlassCard(
          title: 'Emoji',
          subtitle: 'Hier kann später dein Mood- oder Emoji-Content rein.',
          buttonLabel: 'Emoji öffnen',
          onPressed: () {},
          leading: const Text('😊', style: TextStyle(fontSize: 48)),
        ),
      ),
    );
  }
}