import 'package:ficha_paranormal/models/expertise.dart';

class Crime extends Expertise {
  Crime() : super(
      name: 'crime',
      onlyTrained: true,
      needCarry: true,
      baseExtractor: (attributes) => attributes.agility,
      needKit: true
  );
}