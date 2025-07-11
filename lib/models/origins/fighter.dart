import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/expertises/reflexes.dart';
import 'package:ficha_paranormal/models/expertises/melee_combat.dart';

class Fighter extends Origin {
  Fighter() : super(
      name :'lutador',
      trainedExpertises: [Reflexes(), MeleeCombat()],
      powerName: 'Mão Pesada'
  );

  @override
  void usePower() {
  }

}