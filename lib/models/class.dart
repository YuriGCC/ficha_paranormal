import 'package:ficha_paranormal/models/ability.dart';
import 'package:ficha_paranormal/models/attributes.dart';
import 'package:ficha_paranormal/models/proficiency_enum.dart';
import 'package:ficha_paranormal/models/expertise.dart';

class Class {
  int hitPoints;
  Attributes attributes;
  int effortPoints;
  int sanity;
  int nex = 5;
  List<Expertise> classExpertises;
  List<ProficiencyEnum> classProficiencies;
  List<Ability> classAbilitys;

  Class({
    required this.attributes,
    required this.hitPoints,
    required this.effortPoints,
    required this.sanity,
    required this.classProficiencies,
    required this.classExpertises,
    required this.classAbilitys
  });
}