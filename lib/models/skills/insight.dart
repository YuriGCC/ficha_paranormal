import 'package:ficha_paranormal/models/expertise.dart';

class Insight extends Expertise {
  Insight() : super(
      name: 'intuição',
      onlyTrained: false,
      needCarry: false,
      baseExtractor: (attributes) => attributes.presence,
      needKit: false
  );
}