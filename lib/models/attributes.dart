enum AttributeType {
  agility(alias: 'agilidade'),
  strength(alias: 'força'),
  intellect(alias: 'intelecto'),
  presence(alias: 'presença'),
  vigor(alias: 'vigor');

  final String alias;

  const AttributeType({required this.alias});
}

class Attributes {
  int agility;
  int strength;
  int intellect;
  int presence;
  int vigor;

  Attributes({
    required this.agility,
    required this.strength,
    required this.intellect,
    required this.presence,
    required this.vigor
  });

  int getValue(AttributeType type) {
    switch (type) {
      case AttributeType.agility:
        return agility;
      case AttributeType.strength:
        return strength;
      case AttributeType.intellect:
        return intellect;
      case AttributeType.presence:
        return presence;
      case AttributeType.vigor:
        return vigor;
    }
  }

  static String getName(AttributeType type) {
    return type.alias;
  }
}
