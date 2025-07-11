import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Survival extends Expertise {
  Survival() : super(
      name: 'sobrevicência',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: false
  );
}