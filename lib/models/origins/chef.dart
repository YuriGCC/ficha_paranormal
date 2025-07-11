import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/fortitude.dart';
import 'package:ficha_paranormal/models/expertises/profession.dart';

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