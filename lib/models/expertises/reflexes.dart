import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Reflexes extends Expertise {
  Reflexes() : super(
      name: 'reflexos',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.agility,
      needKit: false
  );
}