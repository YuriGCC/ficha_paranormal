import 'package:ficha_paranormal/models/attributes.dart';
import 'package:ficha_paranormal/models/expertise.dart';

class Crime extends Expertise {
  Crime() : super(
      name: 'crime',
      onlyTrained: true,
      needCarry: true,
      attributeType: AttributeType.agility,
      needKit: true
  );
}