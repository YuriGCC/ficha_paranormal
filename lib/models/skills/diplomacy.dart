import 'package:ficha_paranormal/models/expertise.dart';

class Diplomacy extends Expertise {
  Diplomacy() : super(
      name: 'diplomacia',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}