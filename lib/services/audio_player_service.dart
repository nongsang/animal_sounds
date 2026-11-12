import 'package:audioplayers/audioplayers.dart';

import 'dart:developer';

class AudioPlayerService {
  // _internal()은 private 생성자
  // 외부에서 생성자를 호출할 수 없게 한다.
  AudioPlayerService._internal();

  // private 생성자로 인스턴스를 내부에 미리 생성
  static final AudioPlayerService _instance = AudioPlayerService._internal();

  // 팩토리 생성자
  // 팩토리 생성자로 외부에서 인스턴스를 요청하면 미리 생성한 내부 인스턴스를 반환
  factory AudioPlayerService() => _instance;

  // 내부에서 사용할 AudioPlayer
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playSound(String soundAssetPath) async {
    try {
      await stopSound();
      await _audioPlayer.play(AssetSource(soundAssetPath));
    } catch (e, stackTrace) {
      log("오디오 재생 실패: $soundAssetPath", error: e, stackTrace: stackTrace);
    }
  }

  Future<void> stopSound() async {
    await _audioPlayer.stop();
  }
}
