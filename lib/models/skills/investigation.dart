import 'package:ficha_paranormal/models/expertise.dart';

class Investigation extends Expertise {
  Investigation() : super(
      name: 'investigação',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: false
  );
}