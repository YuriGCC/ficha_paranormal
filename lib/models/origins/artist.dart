import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/arts.dart';
import 'package:ficha_paranormal/models/skills/deception.dart';

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