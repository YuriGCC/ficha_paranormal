import 'package:ficha_paranormal/modules/home/home_screen.dart';
import 'package:ficha_paranormal/modules/statsArea/stats_screen.dart';
import 'package:ficha_paranormal/modules/description/description_screen.dart';
import 'package:ficha_paranormal/modules/inventory/inventory_screen.dart';
import 'package:ficha_paranormal/modules/attackList/attackListScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomeScreen(),
  '/description': (context) => DescriptionScreen(),
  '/stats': (context) => StatsScreen(),
  '/inventory': (context) => InventoryScreen(),
  '/attack_list': (context) => AttackListScreen()
};