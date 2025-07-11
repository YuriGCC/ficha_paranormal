import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/investigation.dart';
import 'package:ficha_paranormal/models/expertises/occultism.dart';

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