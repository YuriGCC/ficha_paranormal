import 'package:ficha_paranormal/models/expertise.dart';

class Deception extends Expertise {
  Deception() : super(
      name: 'enganação',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: true
  );
}