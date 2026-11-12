import 'package:animal_sounds/common_widgets/animal_row_widget.dart';
import 'package:animal_sounds/models/animal_infomation.dart';
import 'package:animal_sounds/services/audio_player_service.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimalSounds extends StatelessWidget {
  AnimalSounds({super.key, required this._title});

  final String _title;

  final AudioPlayerService _audioPlayerService = AudioPlayerService();

  @override
  Widget build(BuildContext context) {
    const String assetsPath = "assets/";
    const String assetsImagesPath = "images/";
    const String assetsSoundsPath = "sounds/";
    const String assetsLottiesPath = "lotties/";
    final List<AnimalInfomation> list = [
      AnimalInfomation(
        "Bear",
        "${assetsSoundsPath}bear.wav",
        "$assetsPath${assetsImagesPath}bear.png",
      ),
      AnimalInfomation(
        "Fox",
        "${assetsSoundsPath}fox.wav",
        "$assetsPath${assetsImagesPath}fox.png",
      ),
      AnimalInfomation(
        "Koala",
        "${assetsSoundsPath}koala.wav",
        "$assetsPath${assetsImagesPath}koala.png",
      ),
      AnimalInfomation(
        "Camel",
        "${assetsSoundsPath}camel.wav",
        "$assetsPath${assetsImagesPath}camel.png",
      ),
      AnimalInfomation(
        "Lion",
        "${assetsSoundsPath}lion.wav",
        "$assetsPath${assetsImagesPath}lion.png",
      ),
      AnimalInfomation(
        "Tiger",
        "${assetsSoundsPath}tiger.wav",
        "$assetsPath${assetsImagesPath}tiger.png",
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
          child: Lottie.asset("$assetsPath${assetsLottiesPath}cat.json"),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimalRowWidget(
              firstAnimalInfomation: list[0],
              secondAnimalInfomation: list[1],
              onCardTap: (animalInfomation) => {
                _audioPlayerService.playSound(animalInfomation.pathSoundAsset),
              },
            ),
            AnimalRowWidget(
              firstAnimalInfomation: list[2],
              secondAnimalInfomation: list[3],
              onCardTap: (animalInfomation) => {
                _audioPlayerService.playSound(animalInfomation.pathSoundAsset),
              },
            ),
            AnimalRowWidget(
              firstAnimalInfomation: list[4],
              secondAnimalInfomation: list[5],
              onCardTap: (animalInfomation) => {
                _audioPlayerService.playSound(animalInfomation.pathSoundAsset),
              },
            ),
          ],
        ),
      ),
    );
  }
}
