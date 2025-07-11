import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Perception extends Expertise {
  Perception() : super(
      name: 'percepção',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}