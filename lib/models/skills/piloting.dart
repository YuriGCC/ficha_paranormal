import 'package:ficha_paranormal/models/expertise.dart';

class Piloting extends Expertise {
  Piloting() : super(
      name: 'pilotagem',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.agility,
      needKit: false
  );
}