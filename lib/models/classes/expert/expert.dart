import 'package:ficha_paranormal/models/attributes.dart';
import 'package:ficha_paranormal/models/class.dart';
import 'package:ficha_paranormal/models/proficiency_enum.dart';
import 'package:ficha_paranormal/models/expertises/fortitude.dart';
import 'package:ficha_paranormal/models/expertises/marksmanship.dart';
import 'package:ficha_paranormal/models/expertises/melee_combat.dart';
import 'package:ficha_paranormal/models/expertises/reflexes.dart';

class Expert extends Class {
  Expert(Attributes attributes) : super(
    hitPoints: 20 + attributes.vigor,
    effortPoints: 2 + attributes.presence,
    sanity: 12,
    classProficiencies: [
      ProficiencyEnum.simpleWeapons,
      ProficiencyEnum.tacticalWeapons,
      ProficiencyEnum.lightProtection,
    ],
    classExpertises: [
      MeleeCombat(),
      Marksmanship(),
      Fortitude(),
      Reflexes()
    ],
    classAbilitys: [],
    attributes: attributes
  );
}