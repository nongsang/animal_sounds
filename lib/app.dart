import 'package:animal_sounds/screens/animal_sounds.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aniaml Sounds',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: AnimalSounds(title: 'Aniaml Sounds'),
    );
  }
}
