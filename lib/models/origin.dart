import 'package:ficha_paranormal/models/expertise.dart';

abstract class Origin {
  final String name;
  final String powerName;
  List<Expertise> trainedExpertises;

  Origin({
    required this.name,
    required this.trainedExpertises,
    required this.powerName
  });

  void usePower();

  List<Expertise> learnExpertise(Expertise expertise ) {
    trainedExpertises.add(expertise);
    return trainedExpertises;
  }

}