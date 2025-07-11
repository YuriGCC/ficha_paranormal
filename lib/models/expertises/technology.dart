import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Technology extends Expertise {
  Technology() : super(
      name: 'tecnologia',
      onlyTrained: true,
      needCarry: false,
      attributeType: AttributeType.intellect,
      needKit: true
  );
}