
enum ProficiencyEnum {
  simpleWeapons('armas simples'),
  tacticalWeapons('armas táticas'),
  heavyWeapons('armas pesadas'),
  lightProtection('proteção leve'),
  heavyProtection('proteção pesada'),
  shield('escudo'),
  noProficiency('sem proficiência');

  final String label;

  const ProficiencyEnum(this.label);
}