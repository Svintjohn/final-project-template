// This is your app. It runs as it is: press run and you get the screen below.
//
// Nothing here is precious. Change the title, change the colors, delete the
// counter, add your own screens. It exists so that the repository is a working
// Flutter app from minute one instead of an empty folder.
//
// Everything in this file is Module 4 and 5 material: StatelessWidget,
// StatefulWidget, setState, Scaffold, AppBar, Column, Card, FilledButton.

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart';

void main() {
  runApp(
    // DevicePreview draws a phone frame around your app while you develop, so
    // you can judge it at phone size in a browser. `enabled: !kReleaseMode`
    // means it disappears automatically in the build that gets deployed.
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Final Project',
      debugShowCheckedModeBanner: false,

      // These two lines are what make the DevicePreview toolbar actually
      // change the app. Keep them.
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      // Your design system starts here. One seed color generates a full
      // Material palette; swap in your own and every screen follows.
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6750A4)),
      ),

      home: const HomeScreen(),
    );
  }
}

/// The first screen. Replace it with yours.
///
/// It is a StatefulWidget because it remembers something that changes: the
/// counter. A screen that never changes can be a StatelessWidget instead.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // State: a plain field. Changing it does nothing on its own; the screen only
  // redraws when you change it inside setState.
  int _taps = 0;

  void _handleTap() {
    setState(() {
      _taps++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Reading colors and text styles from the theme, instead of hardcoding
    // them, is what keeps every screen looking like the same app.
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Final Project'),
        backgroundColor: theme.colorScheme.primaryContainer,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rocket_launch,
                size: 72,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 16),
              Text('It works', style: theme.textTheme.headlineSmall),
              const SizedBox(height: 8),
              Text(
                'This is the starting point of your final project. '
                'Open lib/main.dart and start changing it.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text('Taps: $_taps',
                          style: theme.textTheme.headlineSmall),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        onPressed: _handleTap,
                        icon: const Icon(Icons.touch_app),
                        label: const Text('Tap me'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Close the app and the count goes back to zero. '
                'Fixing that is what content/extending-your-app is about.',
                textAlign: TextAlign.center,
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
