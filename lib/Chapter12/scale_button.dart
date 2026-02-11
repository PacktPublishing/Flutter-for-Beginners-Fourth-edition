import 'package:flutter/material.dart';

class ScaleAnimations extends StatefulWidget {
  const ScaleAnimations({super.key});

  @override
  State<ScaleAnimations> createState() => _ScaleAnimationsState();
}

class _ScaleAnimationsState extends State<ScaleAnimations> with SingleTickerProviderStateMixin {
  double _scale = 1.0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = _createScaleAnimation();
    _controller.forward();
  }

  AnimationController _createScaleAnimation() {
    var controller = AnimationController(
      vsync: this,
      lowerBound: 1.0,
      upperBound: 2.0,
      debugLabel: "animations demo",
      duration: Duration(seconds: 3),
    );
    controller.addListener(() {
      setState(() {
        _scale = controller.value;
      });
    });
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: _scaleAnimationButton());
  }

  _scaleAnimationButton() {
    return Transform.scale(
      scale: _scale,
      child: ElevatedButton(
        child: Text("Scaled button"),
        onPressed: () {
          if (_controller.status == AnimationStatus.completed) {
            _controller.reset();
            _controller.forward();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
