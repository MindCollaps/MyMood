import 'package:flutter/cupertino.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonLabel,
    required this.onPressed,
    this.leading,
  });

  final String title;
  final String subtitle;
  final String buttonLabel;
  final VoidCallback onPressed;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leading != null) ...[
          leading!,
          const SizedBox(height: 12),
        ],
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F172A),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
            height: 1.3,
            color: Color(0xFF334155),
          ),
        ),
        const SizedBox(height: 18),
        CupertinoButton.filled(
          onPressed: onPressed,
          borderRadius: BorderRadius.circular(18),
          child: Text(buttonLabel),
        ),
      ],
    );
  }
}