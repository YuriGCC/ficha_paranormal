import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/insight.dart';
import 'package:ficha_paranormal/models/expertises/medicine.dart';

class Victim extends Origin {
  Victim() : super(
      name :'Agente de Saúde',
      trainedExpertises: [Insight(), Medicine()],
      powerName: 'Cicatrizes Psicológicas'
  );

  @override
  void usePower() {
  }

}