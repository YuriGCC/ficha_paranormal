import 'package:flutter/material.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';
import 'package:ficha_paranormal/modules/stats_area/stats_screen.dart';
import 'package:ficha_paranormal/modules/stats_area/widgets/attribute_area.dart';
class StatsState extends State<StatsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(title: 'Ficha'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AtrributeWidget()
          ],
        ),
      ),
    );
  }
  
}