import 'package:ficha_paranormal/models/attributes.dart';
import 'package:ficha_paranormal/models/trial.dart';
import 'package:ficha_paranormal/modules/record_area/record_area_screen.dart';
import 'package:flutter/material.dart';
import 'package:ficha_paranormal/models/record.dart';
import 'package:ficha_paranormal/models/class.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';
import 'package:ficha_paranormal/models/all_expertises.dart';
import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/modules/record_area/controllers/record_area_controller.dart';

class RecordAreaState extends State<RecordAreaScreen> {
  CharacterRecord? characterRecord;
  final controller = RecordAreaController();

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
                                  TextField(
                                    controller: controller.agilityController,
                                    decoration: InputDecoration(
                                      hintText: 'agilidade'
                                    ),
                                  ),
                                  TextField(
                                    controller: controller.strengthController,
                                    decoration: InputDecoration(
                                      hintText: 'força'
                                    ),
                                  ),
                                  TextField(
                                    controller: controller.intelectController,
                                    decoration: InputDecoration(
                                      hintText: 'intelecto'
                                    ),
                                  ),
                                  TextField(
                                    controller: controller.presenceController,
                                    decoration: InputDecoration(
                                      hintText: 'presença'
                                    ),
                                  ),
                                  TextField(
                                    controller: controller.vigorController,
                                    decoration: InputDecoration(
                                      hintText: 'vigor'
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        if (!controller.isValid()) {
                                          showDialog(
                                            context: context,
                                            builder: (_) {
                                              return const AlertDialog(
                                                content: Text('Nenhum atributo pode ultrapssar 5 pontos!'),
                                              );
                                            }
                                          );
                                        }

                                        changeRecordAttributes(Attributes(
                                            agility: int.parse(controller.agilityController.text),
                                            strength: int.parse(controller.strengthController.text),
                                            intellect: int.parse(controller.intelectController.text),
                                            presence: int.parse(controller.presenceController.text),
                                            vigor: int.parse(controller.vigorController.text)
                                        ));

                                        return;
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
                                        height: 200,
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
    Navigator.pushNamed(
      context,
      '/do_expertise_test',
      arguments: expertise,
    );
  }

  void changeRecordAttributes(Attributes attributes) {
    characterRecord?.attributes = attributes;
  }
}