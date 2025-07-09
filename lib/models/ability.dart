
abstract class Ability {
  final String description;
  bool Function(List<Object> args) hasPrerequisite;

  Ability({
    required this.description,
    required this.hasPrerequisite
  });

  void doThis();
}