import 'package:ficha_paranormal/models/expertise.dart';

class Arts extends Expertise {
  Arts() : super(
      name: 'artes',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}