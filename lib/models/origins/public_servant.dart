import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/insight.dart';
import 'package:ficha_paranormal/models/skills/willpower.dart';

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