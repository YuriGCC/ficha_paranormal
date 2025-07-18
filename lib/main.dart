import 'package:flutter/material.dart';
import 'app/themes.dart';
import 'app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ficha Paranormal',
      initialRoute: '/',
      theme: darkTheme,
      routes: routes,
    );
  }
}
