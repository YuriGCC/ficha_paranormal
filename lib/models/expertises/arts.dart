import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Arts extends Expertise {
  Arts() : super(
      name: 'artes',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}