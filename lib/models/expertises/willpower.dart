import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Willpower extends Expertise {
  Willpower() : super(
      name: 'vontade',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}