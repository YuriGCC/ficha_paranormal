import 'package:flutter/material.dart';
import 'package:ficha_paranormal/modules/home/home_screen.dart';
import 'package:ficha_paranormal/utils/widgets/dice_roll_viewer_widget.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';

class HomeState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationAppBar(title: 'Área de Testes Gerais'),
        body: DiceRollViewerWidget()
    );
  }
}
