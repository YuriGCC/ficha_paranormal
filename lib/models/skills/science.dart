import 'package:ficha_paranormal/models/expertise.dart';

class Science extends Expertise {
  Science() : super(
      name: 'ciências',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: false
  );
}