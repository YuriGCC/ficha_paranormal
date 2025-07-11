import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/profession.dart';
import 'package:ficha_paranormal/models/expertises/technology.dart';

class Engineer extends Origin {
  Engineer() : super(
      name :'engenheiro',
      trainedExpertises: [Technology(), Profession()],
      powerName: 'Ferramenta Favorita'
  );

  @override
  void usePower() {
  }

}