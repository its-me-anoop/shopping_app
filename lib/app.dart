import 'package:flutter/material.dart';
import 'package:shopping_app/home/home.dart';

///Shopping App
class ShoppingApp extends StatelessWidget {
  /// Shopping App Contents
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
    );
  }
}
