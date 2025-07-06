
enum TrainingDegreeEnum {
  untrained('Destreinado', 0),
  trained('Treinado', 5),
  veteran('Veterano', 10),
  expert('Expert', 15);

  final String label;
  final int bonus;


  const TrainingDegreeEnum(this.label, this.bonus);
}