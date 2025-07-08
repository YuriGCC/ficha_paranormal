import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/religion.dart';
import 'package:ficha_paranormal/models/skills/willpower.dart';

class Religious extends Origin {
  Religious() : super(
      name :'religioso',
      trainedExpertises: [Religion(), Willpower()],
      powerName: 'Acalentar'
  );

  @override
  void usePower() {
  }

}