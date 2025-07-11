import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/intimidation.dart';
import 'package:ficha_paranormal/models/expertises/iniciative.dart';

class Mercenary extends Origin {
  Mercenary() : super(
      name :'mercenário',
      trainedExpertises: [Iniciative(), Intimidation()],
      powerName: 'Posição de Combate'
  );

  @override
  void usePower() {
  }

}