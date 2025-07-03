import 'package:ficha_paranormal/models/attack.dart';
import 'package:flutter/material.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';
import 'package:ficha_paranormal/modules/attackList/attackListScreen.dart';
import 'package:ficha_paranormal/modules/attackList/attackListController.dart';

class AttackListState extends State<AttackListScreen> {
  final controller = AttackListController();

  List<Attack> attackList = [];

  void addAttackInTable(String attack) {
    if (attack.isEmpty) return;
    setState(() {
      Attack attack = Attack(
        name: controller.nameInput.text,
        test: controller.testInput.text,
        damage: controller.damageInput.text,
        extraInfo: controller.extraInfoInput.text,
      );
      attackList.add(attack);
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(title: 'Habilidades'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: controller.nameInput,
                    decoration: InputDecoration(hintText: 'Nome da habilidade'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: controller.testInput,
                    decoration: InputDecoration(hintText: 'Teste'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: controller.damageInput,
                    decoration: InputDecoration(hintText: 'Dano'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: controller.extraInfoInput,
                    decoration: InputDecoration(
                      hintText: 'Critico/Alcance/Especial',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    addAttackInTable(controller.nameInput.text);
                  },
                  child: const Text('Adicionar'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      attackList.clear();
                      controller.clear();
                    });
                  },
                  child: const Text('Limpar campos'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Table(
              border: TableBorder.all(),
              defaultColumnWidth: FixedColumnWidth(150),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Ataque',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Teste',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Dano',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Critico/Alcance/Especial',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                ...attackList.map(
                  (attack) => TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(attack.name),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(attack.test),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(attack.damage),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(attack.extraInfo),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
