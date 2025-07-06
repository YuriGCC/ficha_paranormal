import 'package:ficha_paranormal/models/expertise.dart';

class Religion extends Expertise {
  Religion() : super(
      name: 'religião',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}