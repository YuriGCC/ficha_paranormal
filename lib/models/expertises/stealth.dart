import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Stealth extends Expertise {
  Stealth() : super(
      name: 'furtividade',
      onlyTrained: false,
      needCarry: true,
      attributeType: AttributeType.agility,
      needKit: false
  );
}