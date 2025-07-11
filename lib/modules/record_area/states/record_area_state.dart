import 'package:ficha_paranormal/models/attributes.dart';
import 'package:ficha_paranormal/models/trial.dart';
import 'package:ficha_paranormal/modules/record_area/record_area_screen.dart';
import 'package:flutter/material.dart';
import 'package:ficha_paranormal/models/record.dart';
import 'package:ficha_paranormal/models/class.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';
import 'package:ficha_paranormal/models/all_expertises.dart';
import 'package:ficha_paranormal/models/expertise.dart';

class RecordAreaState extends State<RecordAreaScreen> {
  CharacterRecord? characterRecord;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CharacterRecord>(
      future: characterBuild(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final characterRecord = snapshot.data!;

        return Scaffold(
          appBar: NavigationAppBar(title: 'Ficha'),
          body: SingleChildScrollView(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('Atributos'),
                                  Text('AGI: ${characterRecord.attributes.agility}'),
                                  Text('FOR: ${characterRecord.attributes.strength}'),
                                  Text('INT: ${characterRecord.attributes.intellect}'),
                                  Text('PRE: ${characterRecord.attributes.presence}'),
                                  Text('VIG: ${characterRecord.attributes.vigor}'),
                                  TextButton(
                                      onPressed: () {

                                      }, 
                                      child: const Text('alterar')
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('Perícias'),
                                  ...characterRecord.expertises.map((expertise) {
                                    return Card(
                                      child: Container(
                                        height: 180,
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              title: Text(expertise.name),
                                              subtitle: Text(
                                                  'Atributo base:  ${expertise.attributeName} \n'
                                                      'Treinamento: ${expertise.trainingDegreeEnum.label} \n'
                                                      'Bonus treinamento:    ${expertise.trainingDegreeEnum.bonus}'
                                              ),
                                            ),
                                            const Spacer(),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: TextButton(
                                                onPressed: () {
                                                  openTestArea(expertise);
                                                },
                                                child: const Text('testar'),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ],
                              ),
                            ),
                          ],
                  ),
          ),
        );
      },
    );
  }

  Future<CharacterRecord> characterBuild() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return CharacterRecord(
      expertises: allExpertises,
      proeficiencies: [],
      abilities: [],
      attributes: Attributes(
        agility: 0,
        strength: 0,
        intellect: 0,
        presence: 0,
        vigor: 0,
      ),
      trial: Trial(trialAbilities: [], trialName: 'trilha 1'),
      recordClass: Class(
        attributes: Attributes(
          agility: 0,
          strength: 0,
          intellect: 0,
          presence: 0,
          vigor: 0,
        ),
        hitPoints: 12,
        effortPoints: 12,
        sanity: 12,
        classProficiencies: [],
        classExpertises: [],
        classAbilitys: [],
      ),
    );
  }

  void openTestArea(Expertise expertise) {
    final methods = expertise.methods;
    Navigator.pushNamed(context, '/do_test');
    methods.forEach((name, func) {
    });
  }
}