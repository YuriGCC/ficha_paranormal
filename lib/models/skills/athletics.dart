import 'package:ficha_paranormal/models/expertise.dart';

class Athletics extends Expertise {
  Athletics() : super(
      name: 'atletismo',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.strength,
      needKit: false
  );
}