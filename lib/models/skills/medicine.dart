import 'package:ficha_paranormal/models/expertise.dart';

class Medicine extends Expertise {
  Medicine() : super(
      name: 'medicina',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: true
  );
}