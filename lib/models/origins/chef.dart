import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/fortitude.dart';
import 'package:ficha_paranormal/models/skills/profession.dart';

class Chef extends Origin {
  Chef() : super(
      name :'chef',
      trainedExpertises: [Fortitude(), Profession()],
      powerName: 'Ingrediente Secreto'
  );

  @override
  void usePower() {
  }

}