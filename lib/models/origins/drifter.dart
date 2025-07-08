import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/fortitude.dart';
import 'package:ficha_paranormal/models/skills/survival.dart';

class Drifter extends Origin {
  Drifter() : super(
      name :'desgarrado',
      trainedExpertises: [Fortitude(), Survival()],
      powerName: 'Calejado'
  );

  @override
  void usePower() {
  }

}