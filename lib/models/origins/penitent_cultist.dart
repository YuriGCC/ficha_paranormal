import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/occultism.dart';
import 'package:ficha_paranormal/models/expertises/religion.dart';

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