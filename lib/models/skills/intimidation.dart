import 'package:ficha_paranormal/models/expertise.dart';

class Intimidation extends Expertise {
  Intimidation() : super(
      name: 'intimidação',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}