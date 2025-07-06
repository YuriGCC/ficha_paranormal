import 'package:ficha_paranormal/models/expertise.dart';

class AnimalHandling extends Expertise {
  AnimalHandling() : super(
      name: 'adestramento',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}