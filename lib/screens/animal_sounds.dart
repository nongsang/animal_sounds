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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(list[0].imageAssetPath, height: 100),
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
                    Image.asset(list[1].imageAssetPath, height: 100),
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
                    Image.asset(list[2].imageAssetPath, height: 100),
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
                    Image.asset(list[3].imageAssetPath, height: 100),
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
                    Image.asset(list[4].imageAssetPath, height: 100),
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
                    Image.asset(list[5].imageAssetPath, height: 100),
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
