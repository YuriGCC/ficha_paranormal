import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/training_degree_enum.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Acrobatics extends Expertise {
  Acrobatics() : super(
      name: 'acrobacia',
      onlyTrained: false,
      needCarry: true,
      attributeType: AttributeType.agility,
      needKit: false,
  );

  @override
  Map<String, Function> get methods => {
    'amortecer queda: 1D20': (DT) => cushionFall(DT)
  };

  String cushionFall(int dt) {
    if (trainingDegreeEnum == TrainingDegreeEnum.untrained ||
        trainingDegreeEnum == TrainingDegreeEnum.trained) {
      return 'Você não treinou o suficiente para esta técnica.';
    }

    if (dt + trainingDegreeEnum.bonus >= 15) {
      return 'O dano pode ser reduzido em 1d6, além de mais 1d6 para cada 5 pontos acima do necessário.';
    }

    return 'Você não conseguiu amortecer a queda.';
  }
}