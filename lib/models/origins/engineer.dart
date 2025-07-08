import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/profession.dart';
import 'package:ficha_paranormal/models/skills/technology.dart';

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