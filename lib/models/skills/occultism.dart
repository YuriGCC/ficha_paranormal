import 'package:ficha_paranormal/models/expertise.dart';

class Occultism extends Expertise {
  Occultism() : super(
      name: 'ocultismo',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: false
  );
}