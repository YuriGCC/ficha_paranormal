import 'package:ficha_paranormal/modules/home/home_screen.dart';
import 'package:ficha_paranormal/modules/stats_area/stats_screen.dart';
import 'package:ficha_paranormal/modules/description/description_screen.dart';
import 'package:ficha_paranormal/modules/inventory/inventory_screen.dart';
import 'package:ficha_paranormal/modules/record_area/record_area_screen.dart';
import 'package:ficha_paranormal/utils/widgets/dice_roll_viewer_widget.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomeScreen(),
  '/description': (context) => DescriptionScreen(),
  '/stats': (context) => StatsScreen(),
  '/inventory': (context) => InventoryScreen(),
  '/record_area': (context) => RecordAreaScreen(),
  '/do_test': (context) => DiceRollViewerWidget()
};