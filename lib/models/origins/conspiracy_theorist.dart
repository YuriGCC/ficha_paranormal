import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/investigation.dart';
import 'package:ficha_paranormal/models/skills/occultism.dart';

class ConspiracyTheorist extends Origin {
  ConspiracyTheorist() : super(
      name :'teórico da conspiração',
      trainedExpertises: [Investigation(), Occultism()],
      powerName: 'Eu Já Sabia'
  );

  @override
  void usePower() {
  }

}