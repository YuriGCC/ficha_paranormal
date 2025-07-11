import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class AnimalHandling extends Expertise {
  AnimalHandling() : super(
      name: 'adestramento',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}