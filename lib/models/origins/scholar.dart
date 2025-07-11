import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/science.dart';
import 'package:ficha_paranormal/models/expertises/investigation.dart';

class Scholar extends Origin {
  Scholar() : super(
    name :'acadêmico',
    trainedExpertises: [Science(), Investigation()],
    powerName: 'Saber é poder'
  );

  @override
  void usePower() {
  }

}