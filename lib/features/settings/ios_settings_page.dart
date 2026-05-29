import '../../shared/widgets/glass_card.dart';
import '../../shared/widgets/ios_glass_scaffold.dart';
import 'package:flutter/cupertino.dart';

class IosSettingsPage extends StatelessWidget {
  const IosSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Mehr'),
      ),
      child: IosGlassScaffold(
        child: GlassCard(
          title: 'Einstellungen',
          subtitle: 'Später kommen hier Optionen und App-Einstellungen rein.',
          buttonLabel: 'Optionen',
          onPressed: () {},
          leading: const Icon(CupertinoIcons.gear_alt, size: 48, color: Color(0xFF0A84FF)),
        ),
      ),
    );
  }
}