import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/training_degree_enum.dart';

class Acrobatics extends Expertise {
  Acrobatics() : super(
      name: 'acrobacia',
      onlyTrained: false,
      needCarry: true,
      baseExtractor: (attributes) => attributes.agility,
      needKit: false
  );

  cushionFall() {
    if (trainingDegreeEnum == TrainingDegreeEnum.veteran) {

    }
  }
}