import 'package:ficha_paranormal/models/expertise.dart';

class Fortitude extends Expertise {
  Fortitude() : super(
      name: 'fortitude',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.vigor,
      needKit: false
  );
}