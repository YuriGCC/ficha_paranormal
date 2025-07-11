import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Medicine extends Expertise {
  Medicine() : super(
      name: 'medicina',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: true
  );
}