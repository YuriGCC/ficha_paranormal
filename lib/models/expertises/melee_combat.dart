import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class MeleeCombat extends Expertise {
  MeleeCombat() : super(
      name: 'luta',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.strength,
      needKit: false
  );
}