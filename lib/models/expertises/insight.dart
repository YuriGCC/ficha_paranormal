import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Insight extends Expertise {
  Insight() : super(
      name: 'intuição',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.presence,
      needKit: false
  );
}