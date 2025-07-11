import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';


class Deception extends Expertise {
  Deception() : super(
      name: 'enganação',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: true
  );
}