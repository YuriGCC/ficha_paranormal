import 'package:ficha_paranormal/models/expertise.dart';

class CurrentAffairs extends Expertise {
  CurrentAffairs() : super(
      name: 'atualidades',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: false
  );
}