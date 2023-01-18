import 'package:flutter/material.dart';
import 'dart:math';

class SpiralAnimation extends StatefulWidget {
  @override
  _SpiralAnimationState createState() => _SpiralAnimationState();
}

class _SpiralAnimationState extends State<SpiralAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0.0, end: 2 * pi).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat();
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
        return Transform.rotate(
          angle: _animation.value,
          child: child,
        );
      },
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 2,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://w0.peakpx.com/wallpaper/178/251/HD-wallpaper-abstract-spiral-digital-art-spiral-abstract-digital-art.jpg',
            ),
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.5,
          //   color: Colors.black,
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.5,
          //   color: Colors.white,
          // )
        ],
      ),
    );
  }
}
