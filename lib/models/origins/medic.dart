import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/insight.dart';
import 'package:ficha_paranormal/models/expertises/medicine.dart';

class Medic extends Origin {
  Medic() : super(
      name :'agente de saúde',
      trainedExpertises: [Insight(), Medicine()],
      powerName: 'Técnica Medicinal'
  );

  @override
  void usePower() {
  }

}