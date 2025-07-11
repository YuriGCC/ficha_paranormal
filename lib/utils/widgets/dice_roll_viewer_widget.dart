import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:ficha_paranormal/models/dice_data.dart';

class DiceRollViewerWidget extends StatefulWidget {
  const DiceRollViewerWidget({super.key});

  @override
  State<DiceRollViewerWidget> createState() => _DiceRollViewerWidgetState();
}

class _DiceRollViewerWidgetState extends State<DiceRollViewerWidget> {
  late Object diceSet;
  bool isReady = false;

  final Map<String?, Object> diceObjectsByName = {};
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
    int totalSum = rolledResults.values
        .expand((list) => list)
        .fold(0, (sum, val) => sum + val);

    return Stack(
      children: [
        Cube(
          onSceneCreated: (Scene scene) {
            diceSet = Object(fileName: 'assets/3d_dice_object/dice_set.obj');
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
          },
        ),

        Positioned(
          top: 10,
          left: 10,
          right: 10,
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: rolledResults.entries.map((entry) {
              return Chip(
                label: Text(
                  '${entry.key}: ${entry.value.join(', ')}',
                  style: const TextStyle(fontSize: 16),
                ),
                backgroundColor: Colors.black87,
                labelStyle: const TextStyle(color: Colors.white),
              );
            }).toList(),
          ),
        ),

        Positioned(
          top: 70,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'Soma Total: $totalSum',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 2, color: Colors.black)],
              ),
            ),
          ),
        ),

        if (isReady)
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              children: [
                ...diceOptions.map((dieData) {
                  return
                    Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: ElevatedButton(
                        onPressed: () {
                          final object = diceObjectsByName[dieData.name];
                          if (object != null) {
                            setState(() {
                              for (var child in diceSet.children) {
                                child.visiable = false;
                              }
                              object.visiable = true;
                            });
                            rollDice(object, dieData);
                          }
                        },
                        child: Text("🎲 ${dieData.label}"),
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
          ),
      ],
    );
  }

  void clearResults() {
    setState(() {
      rolledResults.clear();
      for (var child in diceSet.children) {
        child.visiable = false;
      }
    });
  }

  void rollDice(Object die, DiceData diceData) async {
    for (int i = 0; i < 20; i++) {
      await Future.delayed(const Duration(milliseconds: 30));
      setState(() {
        die.rotation.setValues(
          die.rotation.x + 15,
          die.rotation.y + 20,
          die.rotation.z + 10,
        );
        die.updateTransform();
      });
    }

    final result = Random().nextInt(diceData.maxValue) + 1;

    setState(() {
      die.rotation.setValues(0, result * 20.0 % 360, 0);
      die.updateTransform();
      rolledResults.putIfAbsent(diceData.label, () => []).add(result);
    });
  }
}
