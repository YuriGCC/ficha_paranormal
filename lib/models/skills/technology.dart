import 'package:ficha_paranormal/models/expertise.dart';

class Technology extends Expertise {
  Technology() : super(
      name: 'tecnologia',
      onlyTrained: true,
      needCarry: false,
      baseExtractor: (attributes) => attributes.intellect,
      needKit: true
  );
}