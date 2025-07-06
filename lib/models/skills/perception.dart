import 'package:ficha_paranormal/models/expertise.dart';

class Perception extends Expertise {
  Perception() : super(
      name: 'percepção',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}