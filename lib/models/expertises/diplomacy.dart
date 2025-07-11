import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Diplomacy extends Expertise {
  Diplomacy() : super(
      name: 'diplomacia',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}