import 'package:ficha_paranormal/models/expertise.dart';

class Marksmanship extends Expertise {
  Marksmanship() : super(
      name: 'pontaria',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.agility,
      needKit: false
  );
}