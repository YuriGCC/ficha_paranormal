import 'package:flutter/material.dart';
import 'package:ficha_paranormal/modules/stats_area/widgets/attribute_area.dart';
import 'package:ficha_paranormal/modules/stats_area/controllers/attribute_controller.dart';

class AttributeAreaState extends State<AtrributeWidget> {
  final controller = AttributeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: controller.agility,
          decoration: const InputDecoration(
            hintText: 'AGI',
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          controller: controller.agility,
          decoration: const InputDecoration(
            hintText: 'AGI',
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          controller: controller.intellect,
          decoration: const InputDecoration(
            hintText: 'INT',
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          controller: controller.presence,
          decoration: const InputDecoration(
            hintText: 'PRE',
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          controller: controller.vigor,
          decoration: const InputDecoration(
            hintText: 'VIG',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
