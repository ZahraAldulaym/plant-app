import 'package:flutter/material.dart';
import 'package:plant_app/widget/welcome_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true
      ),
      home: const WelcomeWidget(),
    );
  }
}

