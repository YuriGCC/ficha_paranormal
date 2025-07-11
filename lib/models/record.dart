import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/models/proficiency_enum.dart';
import 'package:ficha_paranormal/models/ability.dart';
import 'package:ficha_paranormal/models/class.dart';
import 'package:ficha_paranormal/models/trial.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class CharacterRecord {
  List<Expertise> expertises;
  List<ProficiencyEnum> proeficiencies;
  List<Ability> abilities;
  Attributes attributes;
  Class recordClass;
  Trial trial;

  CharacterRecord({
    required this.expertises,
    required this.proeficiencies,
    required this.abilities,
    required this.attributes,
    required this.recordClass,
    required this.trial
  });

  void build() {
  }
}