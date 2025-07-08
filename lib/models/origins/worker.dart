import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/fortitude.dart';
import 'package:ficha_paranormal/models/skills/profession.dart';

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