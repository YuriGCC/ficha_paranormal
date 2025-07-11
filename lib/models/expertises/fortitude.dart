import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';


class Fortitude extends Expertise {
  Fortitude() : super(
      name: 'fortitude',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.vigor,
      needKit: false
  );
}