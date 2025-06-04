import 'package:flutter/material.dart';

  void main() {
    runApp(const Animation());
  }

class Animation extends StatefulWidget {
  const Animation({super.key});


  @override
  State<Animation> createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250.0,
          color: Colors.green,
          child: AnimatedAlign(
              alignment: selected?Alignment.topRight:Alignment.topLeft,
              duration: Duration(seconds: 1),
            curve: Curves.easeOutSine,
            child: FlutterLogo(size: 50.0,),
          ),
        ),
      ),
    );
  }
}
