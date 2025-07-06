import 'package:ficha_paranormal/modules/home/widgets/dice_roller.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class DiceRollerWidgetState extends State<DiceRollerWidget> {
  int? _result;

  void _rollDice() {
    final random = Random();
    setState(() {
      _result = random.nextInt(widget.sides);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(
              _result != null ? 'Resultado: $_result' : 'Clique para rolar',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: _rollDice,
              icon: const Icon(Icons.casino),
              label: const Text('Rolar Dado'),
            ),
          ],
        ),
      ),
    );
  }
}