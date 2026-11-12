import 'package:animal_sounds/models/animal_infomation.dart';
import 'package:flutter/material.dart';

class AnimalCardWidget extends StatelessWidget {
  const AnimalCardWidget({
    super.key,
    required this._animalInfomation,
    required this._onTap,
  });

  final AnimalInfomation _animalInfomation;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _onTap,
          child: Image.asset(_animalInfomation.pathImageAsset, height: 100),
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(top: 10, bottom: 10),
          child: Container(width: 115, height: 2, color: Colors.green),
        ),
        Text(_animalInfomation.name, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
