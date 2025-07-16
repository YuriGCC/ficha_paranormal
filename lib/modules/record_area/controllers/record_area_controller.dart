import 'package:flutter/material.dart';

class RecordAreaController {
  final vigorController = TextEditingController();
  final intelectController = TextEditingController();
  final presenceController = TextEditingController();
  final strengthController = TextEditingController();
  final agilityController = TextEditingController();

  bool isValid() {
    var allControlers = [vigorController, intelectController, presenceController,
    strengthController, agilityController];

    return allControlers.every((controler) {
      return int.parse(controler.text) < 5;
    });
  }

}