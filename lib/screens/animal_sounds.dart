import 'package:animal_sounds/models/animal_infomation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimalSounds extends StatelessWidget {
  const AnimalSounds({super.key, required this._title});

  final String _title;

  @override
  Widget build(BuildContext context) {
    const String assetsPath = "assets/";
    const String imagesPath = "images/";
    const String soundsPath = "sounds/";
    const String lottiesPath = "lotties/";
    final List<AnimalInfomation> list = [
      AnimalInfomation(
        "Bear",
        "$assetsPath${soundsPath}bear.wav",
        "$assetsPath${imagesPath}bear.png",
      ),
      AnimalInfomation(
        "Fox",
        "$assetsPath${soundsPath}fox.wav",
        "$assetsPath${imagesPath}fox.png",
      ),
      AnimalInfomation(
        "Koala",
        "$assetsPath${soundsPath}koala.wav",
        "$assetsPath${imagesPath}koala.png",
      ),
      AnimalInfomation(
        "Camel",
        "$assetsPath${soundsPath}camel.wav",
        "$assetsPath${imagesPath}camel.png",
      ),
      AnimalInfomation(
        "Lion",
        "$assetsPath${soundsPath}lion.wav",
        "$assetsPath${imagesPath}lion.png",
      ),
      AnimalInfomation(
        "Tiger",
        "$assetsPath${soundsPath}tiger.wav",
        "$assetsPath${imagesPath}tiger.png",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_title),
        centerTitle: true,
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Lottie.asset("$assetsPath${lottiesPath}cat.json"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [Column(), Column()]),
          Row(children: [Column(), Column()]),
          Row(children: [Column(), Column()]),
        ],
      ),
    );
  }
}
