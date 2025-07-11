import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/fortitude.dart';
import 'package:ficha_paranormal/models/expertises/profession.dart';

class Worker extends Origin {
  Worker() : super(
      name :'operário',
      trainedExpertises: [Fortitude(), Profession()],
      powerName: 'Ferramenta de Trabalho'
  );

  @override
  void usePower() {
  }

}