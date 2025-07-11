import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/diplomacy.dart';
import 'package:ficha_paranormal/models/expertises/profession.dart';

class Executive extends Origin {
  Executive() : super(
      name :'executivo',
      trainedExpertises: [Diplomacy(), Profession()],
      powerName: 'Processo Otimizado'
  );

  @override
  void usePower() {
  }

}