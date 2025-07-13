import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart' as cube;
import 'package:ficha_paranormal/models/dice_data.dart';

class DiceRollViewerWidget extends StatefulWidget {
  final void Function(String label, int result)? onDiceRolled;

  const DiceRollViewerWidget({super.key, this.onDiceRolled});

  @override
  State<DiceRollViewerWidget> createState() => _DiceRollViewerWidgetState();
}

class _DiceRollViewerWidgetState extends State<DiceRollViewerWidget> {
  late cube.Object diceSet;
  bool isReady = false;

  final Map<String?, cube.Object> diceObjectsByName = {};
  final Map<String, List<int>> rolledResults = {};

  final List<DiceData> diceOptions = [
    DiceData(name: 'pPyramid1', label: 'D4', maxValue: 4),
    DiceData(name: 'pCube8', label: 'D6', maxValue: 6),
    DiceData(name: 'pPyramid3', label: 'D8', maxValue: 8),
    DiceData(name: 'Mesh', label: 'D10', maxValue: 10),
    DiceData(name: 'dodecahedron1:Mesh', label: 'D12', maxValue: 12),
    DiceData(name: 'icosahedron:icosahedron', label: 'D20', maxValue: 20),
  ];

  @override
  Widget build(BuildContext context) {
    int totalSum = rolledResults.values.expand((list) => list).fold(0, (sum, val) => sum + val);

    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isTall = constraints.maxHeight > 400;

        final cubeWidget = isTall
            ? Expanded(child: cube.Cube(onSceneCreated: _createScene))
            : SizedBox(height: 300, child: cube.Cube(onSceneCreated: _createScene));

        final content = Column(
          children: [
            cubeWidget,
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: rolledResults.entries.map((entry) {
                return Chip(
                  label: Text('${entry.key}: ${entry.value.join(', ')}', style: const TextStyle(fontSize: 16)),
                  backgroundColor: Colors.black87,
                  labelStyle: const TextStyle(color: Colors.white),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            Text(
              'Soma Total: $totalSum',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 2, color: Colors.black)],
              ),
            ),
            const SizedBox(height: 10),
            if (isReady)
              Row(
                children: [
                  ...diceOptions.map((diceData) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: ElevatedButton(
                          onPressed: () => _rollSpecificDice(diceData),
                          child: Text("🎲 ${diceData.label}"),
                        ),
                      ),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: clearResults,
                      child: const Text("Limpar"),
                    ),
                  ),
                ],
              ),
          ],
        );

        return isTall
            ? content
            : SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: content,
        );
      },
    );
  }

  void _createScene(cube.Scene scene) {
    diceSet = cube.Object(fileName: 'assets/3d_dice_object/dice_set.obj');
    diceSet.updateTransform();
    scene.world.add(diceSet);
    scene.camera.zoom = 10;

    Future.delayed(const Duration(seconds: 1), () {
      for (var child in diceSet.children) {
        diceObjectsByName[child.name] = child;
        child.visiable = false;
      }
      setState(() {
        isReady = true;
      });
    });
  }

  void _rollSpecificDice(DiceData diceData) {
    final object = diceObjectsByName[diceData.name];
    if (object != null) {
      setState(() {
        for (var child in diceSet.children) {
          child.visiable = false;
        }
        object.visiable = true;
      });
      rollDice(object, diceData);
    }
  }

  void clearResults() {
    setState(() {
      rolledResults.clear();
      for (var child in diceSet.children) {
        child.visiable = false;
      }
    });
  }

  void rollDice(cube.Object dice, DiceData diceData) async {
    for (int i = 0; i < 20; i++) {
      await Future.delayed(const Duration(milliseconds: 30));
      setState(() {
        dice.rotation.setValues(
          dice.rotation.x + 15,
          dice.rotation.y + 20,
          dice.rotation.z + 10,
        );
        dice.updateTransform();
      });
    }

    final result = Random().nextInt(diceData.maxValue) + 1;
    widget.onDiceRolled?.call(diceData.label, result);

    setState(() {
      dice.rotation.setValues(0, result * 20.0 % 360, 0);
      dice.updateTransform();
      rolledResults.putIfAbsent(diceData.label, () => []).add(result);
    });
  }
}
