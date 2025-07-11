import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Marksmanship extends Expertise {
  Marksmanship() : super(
      name: 'pontaria',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.agility,
      needKit: false
  );
}