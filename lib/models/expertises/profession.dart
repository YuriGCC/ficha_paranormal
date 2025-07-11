import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Profession extends Expertise {
  Profession() : super(
      name: 'profissao',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: false
  );
}