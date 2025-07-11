import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/perception.dart';
import 'package:ficha_paranormal/models/expertises/marksmanship.dart';

class Cop extends Origin {
  Cop() : super(
      name :'policial',
      trainedExpertises: [Perception(), Marksmanship()],
      powerName: 'Patrulha'
  );

  @override
  void usePower() {
  }

}