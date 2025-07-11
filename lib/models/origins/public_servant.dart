import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/insight.dart';
import 'package:ficha_paranormal/models/expertises/willpower.dart';

class PublicServant extends Origin {
  PublicServant() : super(
      name :'servidor público',
      trainedExpertises: [Insight(), Willpower()],
      powerName: 'Espirito Cívico'
  );

  @override
  void usePower() {
  }

}