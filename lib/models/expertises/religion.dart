import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Religion extends Expertise {
  Religion() : super(
      name: 'religião',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}