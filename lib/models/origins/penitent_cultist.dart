import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/occultism.dart';
import 'package:ficha_paranormal/models/skills/religion.dart';

class PenitentCultist extends Origin {
  PenitentCultist() : super(
      name :'cultista arrependido',
      trainedExpertises: [Occultism(), Religion()],
      powerName: 'Traços do Outro Lado'
  );

  @override
  void usePower() {
  }

}