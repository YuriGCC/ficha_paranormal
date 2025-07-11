import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Investigation extends Expertise {
  Investigation() : super(
      name: 'investigação',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: false
  );
}