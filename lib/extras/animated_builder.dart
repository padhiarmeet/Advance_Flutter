import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const animatedBuilder());
}
class animatedBuilder extends StatefulWidget {

  const animatedBuilder({super.key});

  @override
  State<animatedBuilder> createState() => _animatedBuilderState();
}

class _animatedBuilderState extends State<animatedBuilder> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 10),
  vsync: this)..repeat();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(animation: _controller, builder: (context, child) {
        return Transform.rotate(angle: _controller.value * 12.0 * math.pi,child: FlutterLogo(size: 45.0,),);
      },),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
