import 'package:flutter/material.dart';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';
import 'package:ficha_paranormal/modules/statsArea/stats_screen.dart';

class StatsState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(title: 'Ficha'),
      body: SingleChildScrollView(
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
  
}