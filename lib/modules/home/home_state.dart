import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'dart:math';
import 'package:ficha_paranormal/utils/widgets/navigation_bar.dart';

class HomeState extends State<HomeScreen> {
  final List<Widget> _emojis = [];

  void _spawnEmoji() {
    final id = UniqueKey();
    final screenWidth = MediaQuery.of(context).size.width;
    final emoji = _Emoji(
      key: id,
      top: 500,
      left: Random().nextDouble() * screenWidth,
      onComplete: () {
        setState(() {
          _emojis.removeWhere((e) => e.key == id);
        });
      }
    );

    setState(() {
      _emojis.add(emoji);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationAppBar(title: 'Home'),
        body:  Stack(
          children: [ Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Image.asset('assets/logo.png', width: 400, height: 400),
              const SizedBox(height: 20),
              Text('Olá! Bem vindo a Ficha Paranormal!'),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: _spawnEmoji, child: Text('😮'))
                ],
              ),
            ),
            ..._emojis
          ]
          ),
        );
  }
  
}

class _Emoji extends StatefulWidget {
  final double top;
  final double left;
  final VoidCallback onComplete;

  const _Emoji({
    required Key key,
    required this.top,
    required this.left,
    required this.onComplete
  }): super(key: key);

  @override
  State<_Emoji> createState() => __EmojiState();
}

class __EmojiState extends State<_Emoji> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: widget.top, end: widget.top - 150)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onComplete();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Positioned(
          top: _animation.value,
          left: widget.left,
          child: Opacity(
            opacity: 1.0 - _controller.value,
            child: child,
          ),
        );
      },
      child: const Text(
        '😮',
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}