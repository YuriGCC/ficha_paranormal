import 'package:ficha_paranormal/models/origin.dart';
import 'package:ficha_paranormal/models/skills/reflexes.dart';
import 'package:ficha_paranormal/models/skills/melee_combat.dart';

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