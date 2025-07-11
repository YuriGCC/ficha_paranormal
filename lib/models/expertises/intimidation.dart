import 'package:ficha_paranormal/models/attributes.dart';
import 'package:ficha_paranormal/models/expertise.dart';

class Intimidation extends Expertise {
  Intimidation() : super(
      name: 'intimidação',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}