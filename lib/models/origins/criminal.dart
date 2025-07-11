import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/crime.dart';
import 'package:ficha_paranormal/models/expertises/stealth.dart';

class Criminal extends Origin {
  Criminal() : super(
      name :'crimininoso',
      trainedExpertises: [Crime(), Stealth()],
      powerName: 'O Crime Compensa'
  );

  @override
  void usePower() {
  }

}