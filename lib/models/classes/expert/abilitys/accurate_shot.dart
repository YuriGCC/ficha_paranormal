import 'package:ficha_paranormal/models/ability.dart';
import 'package:ficha_paranormal/models/skills/marksmanship.dart';

class AccurateShow extends Ability {
  AccurateShow() : super(
      description: 'Se estiver usando uma arma de disparo,'
          'você soma sua agilidade nas rolagens de dano e ignora a penaloidade'
          'contra alvos envolvidos em combate corpo a corpo ( mesmo se não usar'
          'a ação mirar )',
      hasPrerequisite: (List<Object> args) {
        if (args.length == 1 && args[0] is Marksmanship) {
          final marksmanship = args[0] as Marksmanship;
          return marksmanship.isTrained;
        }
        throw ArgumentError('Expected only 1 argument of type Marksmanship');
      }
  );

  @override
  void doThis() {
  }

}