import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/investigation.dart';
import 'package:ficha_paranormal/models/expertises/perception.dart';

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