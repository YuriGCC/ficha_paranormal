import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';


class CurrentAffairs extends Expertise {
  CurrentAffairs() : super(
      name: 'atualidades',
      onlyTrained: false,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: false
  );
}