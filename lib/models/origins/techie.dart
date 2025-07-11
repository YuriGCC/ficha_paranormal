import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/investigation.dart';
import 'package:ficha_paranormal/models/expertises/technology.dart';

class Techie extends Origin {
  Techie() : super(
      name :'TI',
      trainedExpertises: [Technology(), Investigation()],
      powerName: 'Motor de Busca'
  );

  @override
  void usePower() {
  }

}