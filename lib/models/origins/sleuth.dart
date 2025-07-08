import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/investigation.dart';
import 'package:ficha_paranormal/models/skills/perception.dart';

class Sleuth extends Origin {
  Sleuth() : super(
      name :'investigador',
      trainedExpertises: [Perception(), Investigation()],
      powerName: 'Faro para Pistas'
  );

  @override
  void usePower() {
  }

}