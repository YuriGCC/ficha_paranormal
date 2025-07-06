import 'package:flutter/material.dart';
import 'package:ficha_paranormal/models/attack.dart';

class AttackListController {
  final nameInput = TextEditingController();
  final testInput = TextEditingController();
  final damageInput = TextEditingController();
  final extraInfoInput = TextEditingController();

  bool isValid() {
    return nameInput.text.isNotEmpty && testInput.text.isNotEmpty
      && damageInput.text.isNotEmpty;
  }

  void dispose() {
    nameInput.dispose();
    testInput.dispose();
    damageInput.dispose();
    extraInfoInput.dispose();
  }

  void clear() {
    nameInput.clear();
    testInput.clear();
    damageInput.clear();
    extraInfoInput.clear();
  }

  Attack toAttack() {
    return Attack(
        name: nameInput.text,
        test: testInput.text,
        damage: damageInput.text,
        extraInfo: extraInfoInput.text
    );
  }
}