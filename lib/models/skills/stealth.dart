import 'package:ficha_paranormal/models/expertise.dart';

class Stealth extends Expertise {
  Stealth() : super(
      name: 'furtividade',
      onlyTrained: false,
      needCarry: true,
      baseExtractor: (attributes) => attributes.agility,
      needKit: false
  );
}