import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/animal_handling.dart';
import 'package:ficha_paranormal/models/skills/survival.dart';

class FarmWorker extends Origin {
  FarmWorker() : super(
      name :'trabalhador rural',
      trainedExpertises: [Survival(), AnimalHandling()],
      powerName: 'Desbravador'
  );

  @override
  void usePower() {
  }

}