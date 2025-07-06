import 'package:ficha_paranormal/models/expertise.dart';

class Willpower extends Expertise {
  Willpower() : super(
      name: 'vontade',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}