import 'package:flutter/material.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const NavigationAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 4,
      leading: Padding(padding: const EdgeInsets.all(8.0)),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      centerTitle: true,
      actions: [
        Visibility(
          visible: ModalRoute.of(context)?.settings.name != '/',
          child: IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ),
        Visibility(
          visible: ModalRoute.of(context)?.settings.name != '/stats',
          child: IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/stats');
            },
          ),
        ),
        Visibility(
          visible: ModalRoute.of(context)?.settings.name != '/attack_list',
          child: IconButton(
            icon: const Icon(Icons.whatshot, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/attack_list');
            },
          ),
        ),
        Visibility(
          visible: ModalRoute.of(context)?.settings.name != '/inventory',
          child: IconButton(
            icon: const Icon(Icons.backpack, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/inventory');
            },
          ),
        ),
        Visibility(
          visible: ModalRoute.of(context)?.settings.name != '/description',
          child: IconButton(
            icon: const Icon(Icons.description, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/description');
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
