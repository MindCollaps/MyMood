import '../../shared/widgets/glass_card.dart';
import '../../shared/widgets/ios_glass_scaffold.dart';
import 'package:flutter/cupertino.dart';

class IosHomePage extends StatelessWidget {
  const IosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Start'),
      ),
      child: IosGlassScaffold(
        child: GlassCard(
          title: 'Hallo Welt',
          subtitle: 'Das ist die iOS-Startseite mit glasigem Look.',
          buttonLabel: 'Button',
          onPressed: () {},
        ),
      ),
    );
  }
}