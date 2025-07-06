import 'package:ficha_paranormal/models/expertise.dart';

class Tactics extends Expertise {
  Tactics() : super(
      name: 'tática',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: false
  );
}