import 'package:flutter/material.dart';
import 'package:hello_world/presentation/screens/button_example.dart';
import 'package:hello_world/presentation/screens/counter_functions_screens.dart';
import 'package:hello_world/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green
      ),
      home: const CounterFunctionScreen(),
    );
  }
}
