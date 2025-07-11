import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/arts.dart';
import 'package:ficha_paranormal/models/expertises/deception.dart';

class Artist extends Origin {
  Artist() : super(
      name :'artista',
      trainedExpertises: [Arts(), Deception()],
      powerName: 'Magnum Opus'
  );

  @override
  void usePower() {
  }

}