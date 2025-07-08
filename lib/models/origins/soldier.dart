import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/tactics.dart';
import 'package:ficha_paranormal/models/skills/marksmanship.dart';

class Soldier extends Origin {
  Soldier() : super(
      name :'militar',
      trainedExpertises: [Tactics(), Marksmanship()],
      powerName: 'Para Bellum'
  );

  @override
  void usePower() {
  }

}