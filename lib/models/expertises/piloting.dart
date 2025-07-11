import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Piloting extends Expertise {
  Piloting() : super(
      name: 'pilotagem',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.agility,
      needKit: false
  );
}