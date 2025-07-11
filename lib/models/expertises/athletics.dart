import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';


class Athletics extends Expertise {
  Athletics() : super(
      name: 'atletismo',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.strength,
      needKit: false
  );
}