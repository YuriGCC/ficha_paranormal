import 'package:ficha_paranormal/models/expertise.dart';

class Reflexes extends Expertise {
  Reflexes() : super(
      name: 'reflexos',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.agility,
      needKit: false
  );
}