import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/piloting.dart';
import 'package:ficha_paranormal/models/expertises/diplomacy.dart';

class Tycoon extends Origin {
  Tycoon() : super(
      name :'magnata',
      trainedExpertises: [Diplomacy(), Piloting()],
      powerName: 'Patrocinador'
  );

  @override
  void usePower() {
  }

}