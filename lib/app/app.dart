import 'dart:io';

import '../features/navigation/android_shell.dart';
import '../features/navigation/ios_shell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EineApp extends StatelessWidget {
  const EineApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xFF0A84FF),
        ),
        home: IosShell(),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EineApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2563EB)),
        useMaterial3: true,
      ),
      home: const AndroidShell(),
    );
  }
}