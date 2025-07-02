import 'package:flutter/material.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';
import 'package:ficha_paranormal/modules/attackList/attackListScreen.dart';

class AttackListState extends State<AttackListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(title: 'Habilidades'),
    );
  }

}

