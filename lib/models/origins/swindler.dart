import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/crime.dart';
import 'package:ficha_paranormal/models/expertises/deception.dart';

class Swindler extends Origin {
  Swindler() : super(
      name :'trambiqueiro',
      trainedExpertises: [Crime(), Deception()],
      powerName: 'Impostor'
  );

  @override
  void usePower() {
  }

}