import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/training_degree_enum.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Acrobatics extends Expertise {
  Acrobatics() : super(
      name: 'acrobacia',
      onlyTrained: false,
      needCarry: true,
      attributeType: AttributeType.agility,
      needKit: false
  );

  cushionFall(DT) {
    if (trainingDegreeEnum == TrainingDegreeEnum.veteran && DT >=15) {
    }
  }
}