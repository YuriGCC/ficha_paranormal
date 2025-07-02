import 'package:flutter/material.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';
import 'package:ficha_paranormal/modules/attackList/attackListScreen.dart';
import 'package:ficha_paranormal/modules/attackList/attackListController.dart';

class AttackListState extends State<AttackListScreen> {
  final controller = AttackListController();

  List<String> ataques = [];

  void addAttackInTable(String attack) {
    if (attack.isEmpty) return;
    setState(() {
      ataques.add(attack);
      controller.nameInput.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(title: 'Habilidades'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller.nameInput,
            decoration: InputDecoration(hintText: 'Nome da habilidade'),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  addAttackInTable(controller.nameInput.text);
                },
                child: const Text('Adicionar'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    ataques.clear();
                    controller.nameInput.clear();
                  });
                },
                child: const Text('Limpar campos'),
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
                      child: Text('Nome', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                ...ataques.map((attack) => TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(attack),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

