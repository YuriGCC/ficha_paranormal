import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/fortitude.dart';
import 'package:ficha_paranormal/models/expertises/survival.dart';

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