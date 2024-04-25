import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 8).getTheme(),
      home: Scaffold(
        body: Center(
          child: FilledButton(
            child: const Text('Adios'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
