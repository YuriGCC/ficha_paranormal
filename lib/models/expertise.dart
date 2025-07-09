import 'package:ficha_paranormal/models/training_degree_enum.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class Expertise {
  TrainingDegreeEnum trainingDegreeEnum = TrainingDegreeEnum.untrained;

   int Function(Attributes) baseExtractor;
   Attributes attributes = Attributes(
      agility: 0,
      strength: 0,
      intellect: 0,
      presence: 0,
      vigor: 0
   );
  final bool onlyTrained;
  final bool needCarry;
  final bool needKit;
  final String name;
  bool isTrained = false;
  bool haveKit = false;
  bool overloadCarry = false;
  int get baseAttribute => baseExtractor(attributes);

  Expertise({required this.baseExtractor, required this.onlyTrained,
    required this.needCarry, required this.needKit, required this.name
  });
}