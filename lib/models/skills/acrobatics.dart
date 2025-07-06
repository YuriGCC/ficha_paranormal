import 'package:ficha_paranormal/models/expertise.dart';

class Acrobatics extends Expertise {
  Acrobatics() : super(
      name: 'acrobacia',
      onlyTrained: false,
      needCarry: true,
      baseExtractor: (attributes) => attributes.agility,
      needKit: false
  );
}