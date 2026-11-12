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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        _audioPlayerService.playSound(list[0].pathSoundAsset),
                      },
                      child: Image.asset(list[0].pathImageAsset, height: 100),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    Text(list[0].name, style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        _audioPlayerService.playSound(list[1].pathSoundAsset),
                      },
                      child: Image.asset(list[1].pathImageAsset, height: 100),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    Text(list[1].name, style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        _audioPlayerService.playSound(list[2].pathSoundAsset),
                      },
                      child: Image.asset(list[2].pathImageAsset, height: 100),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    Text(list[2].name, style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        _audioPlayerService.playSound(list[3].pathSoundAsset),
                      },
                      child: Image.asset(list[3].pathImageAsset, height: 100),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    Text(list[3].name, style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        _audioPlayerService.playSound(list[4].pathSoundAsset),
                      },
                      child: Image.asset(list[4].pathImageAsset, height: 100),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    Text(list[4].name, style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        _audioPlayerService.playSound(list[5].pathSoundAsset),
                      },
                      child: Image.asset(list[5].pathImageAsset, height: 100),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    Text(list[5].name, style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
