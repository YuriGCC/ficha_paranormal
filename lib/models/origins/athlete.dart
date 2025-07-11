import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/acrobatics.dart';
import 'package:ficha_paranormal/models/expertises/athletics.dart';

class Athlete extends Origin {
  Athlete() : super(
      name :'atleta',
      trainedExpertises: [Athletics(), Acrobatics()],
      powerName: '110%'
  );

  @override
  void usePower() {
  }

}