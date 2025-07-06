import 'package:ficha_paranormal/models/expertise.dart';

class Iniciative extends Expertise {
  Iniciative() : super(
      name: 'iniciativa',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.agility,
      needKit: false
  );
}