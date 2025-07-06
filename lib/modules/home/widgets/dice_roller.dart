import 'package:flutter/material.dart';
import 'package:ficha_paranormal/modules/home/states/dice_roller_state.dart';

class DiceRollerWidget extends StatefulWidget {
  final int sides;
  final String label;

  const DiceRollerWidget({
    Key? key,
    this.sides = 20,
    this.label = 'D20',
  }): super(key: key);

  @override
  DiceRollerWidgetState  createState() {
    return DiceRollerWidgetState();
  }
}