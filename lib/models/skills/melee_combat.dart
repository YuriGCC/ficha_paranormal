import 'package:ficha_paranormal/models/expertise.dart';

class MeleeCombat extends Expertise {
  MeleeCombat() : super(
      name: 'luta',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.strength,
      needKit: false
  );
}