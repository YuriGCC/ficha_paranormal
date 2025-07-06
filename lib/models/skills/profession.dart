import 'package:ficha_paranormal/models/expertise.dart';

class Profession extends Expertise {
  Profession() : super(
      name: 'profissao',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: false
  );
}