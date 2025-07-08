import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/crime.dart';
import 'package:ficha_paranormal/models/skills/deception.dart';

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