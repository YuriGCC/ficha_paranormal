import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Science extends Expertise {
  Science() : super(
      name: 'ciências',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: false
  );
}