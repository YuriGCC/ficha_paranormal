import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/acrobatics.dart';
import 'package:ficha_paranormal/models/skills/athletics.dart';

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