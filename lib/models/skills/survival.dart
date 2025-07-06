import 'package:ficha_paranormal/models/expertise.dart';

class Survival extends Expertise {
  Survival() : super(
      name: 'sobrevicência',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: false
  );
}