import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Iniciative extends Expertise {
  Iniciative() : super(
      name: 'iniciativa',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.agility,
      needKit: false
  );
}