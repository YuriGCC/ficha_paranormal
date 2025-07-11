import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Tactics extends Expertise {
  Tactics() : super(
      name: 'tática',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: false
  );
}