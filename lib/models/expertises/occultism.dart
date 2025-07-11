import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Occultism extends Expertise {
  Occultism() : super(
      name: 'ocultismo',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: false
  );
}