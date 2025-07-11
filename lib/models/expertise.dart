import 'package:ficha_paranormal/models/training_degree_enum.dart';
import 'package:ficha_paranormal/models/attributes.dart';

abstract class Expertise {
  TrainingDegreeEnum trainingDegreeEnum = TrainingDegreeEnum.untrained;

   AttributeType attributeType;
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
  int get baseAttribute => attributes.getValue(attributeType);
  String get attributeName => Attributes.getName(attributeType);
  Map<String, Function> get methods => {};

  Expertise({
    required this.onlyTrained,
    required this.needCarry,
    required this.needKit,
    required this.name,
    required this.attributeType
  });


}