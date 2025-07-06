import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class DiceRollViewerWidget extends StatelessWidget {
  const DiceRollViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Cube(
        onSceneCreated: (Scene scene) {
          scene.world.add(Object(
            fileName: 'assets/3d_dice_object/dice_set.obj'
          ));
          scene.camera.zoom = 10;
        },
      ),
    );
  }
  
  
}