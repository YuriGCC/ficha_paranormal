import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/intimidation.dart';
import 'package:ficha_paranormal/models/skills/iniciative.dart';

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