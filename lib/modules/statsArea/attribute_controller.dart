import 'package:flutter/material.dart';
import 'package:ficha_paranormal/models/attributes.dart';

class AttributeController {
  final agility = TextEditingController();
  final strength = TextEditingController();
  final intellect = TextEditingController();
  final presence = TextEditingController();
  final vigor = TextEditingController();

  bool isValid() {
    bool notEmpty = agility.text.isNotEmpty && strength.text.isNotEmpty &&
    intellect.text.isNotEmpty && presence.text.isNotEmpty && vigor.text.isNotEmpty;

    final fields = [agility.text, strength.text, intellect.text, presence.text,
      vigor.text];
    bool allInt = fields.every((field) => int.tryParse(field) != null);

    return notEmpty && allInt;
  }

  void dispose() {
    agility.dispose();
    strength.dispose();
    intellect.dispose();
    presence.dispose();
    vigor.dispose();
  }

  void clear() {
    agility.clear();
    strength.clear();
    intellect.clear();
    presence.clear();
    vigor.clear();
  }

  Attributes toAtributes() {

    if (isValid()) {
      return Attributes(
        agility: int.parse(agility.text),
        strength: int.parse(strength.text),
        intellect: int.parse(intellect.text),
        presence: int.parse(presence.text),
        vigor: int.parse(vigor.text),
      );
    }

    throw Exception("Campos de atributos inválidos");
  }


}