import 'package:animal_sounds/common_widgets/animal_card_widget.dart';
import 'package:animal_sounds/models/animal_infomation.dart';
import 'package:flutter/material.dart';

class AnimalRowWidget extends StatelessWidget {
  const AnimalRowWidget({
    super.key,
    required this._firstAnimalInfomation,
    required this._secondAnimalInfomation,
    required this._onCardTap,
  });

  final AnimalInfomation _firstAnimalInfomation;
  final AnimalInfomation _secondAnimalInfomation;
  // 터치가 발생했을 때 전달할 동물 정보 콜백
  final ValueChanged<AnimalInfomation> _onCardTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimalCardWidget(
          animalInfomation: _firstAnimalInfomation,
          onTap: () => _onCardTap(_firstAnimalInfomation),
        ),
        AnimalCardWidget(
          animalInfomation: _secondAnimalInfomation,
          onTap: () => _onCardTap(_secondAnimalInfomation),
        ),
      ],
    );
  }
}
