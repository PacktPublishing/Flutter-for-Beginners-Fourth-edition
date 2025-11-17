import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotationAnimations extends StatefulWidget {
  const RotationAnimations({super.key});

  @override
  State<RotationAnimations> createState() => _RotationAnimationsState();
}

class _RotationAnimationsState extends State<RotationAnimations> with SingleTickerProviderStateMixin {
  double _angle = 0.0;
  double _scale = 1.0;
  Offset _offset = Offset.zero;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = _createScaleAnimation();
    _controller.forward();
  }

  AnimationController _createRotationAnimation() {
    final controller = AnimationController(
      vsync: this,
      debugLabel: "animations demo",
      duration: Duration(seconds: 3),
    );
    controller.addListener(() {
      setState(() {
        _angle = (controller.value * 360.0) * (math.pi / 180);
      });
    });
    return controller;
  }

  AnimationController _createBounceInRotationAnimation() {
    final controller = AnimationController(
      vsync: this,
      debugLabel: "animations demo",
      duration: Duration(seconds: 3),
    );
    var animation = controller.drive(
      CurveTween(
        curve: Curves.bounceIn,
      ),
    );
    animation.addListener(() {
      setState(() {
        _angle = (animation.value * 360.0) * (math.pi / 180);
      });
    });
    return controller;
  }

  AnimationController _createTranslateAnimation() {
    final controller = AnimationController(
      vsync: this,
      debugLabel: "animations demo",
      duration: Duration(seconds: 2),
    );
    var animation = controller.drive(
      Tween<Offset>(
        begin: Offset.zero,
        end: Offset(70, 200),
      ),
    );
    animation.addListener(() {
      setState(() {
        _offset = animation.value;
      });
    });
    return controller;
  }

  _createScaleAnimation() {
    var controller = AnimationController(
      vsync: this,
      lowerBound: 1.0,
      upperBound: 2.0,
      debugLabel: "animations demo",
      duration: Duration(seconds: 2),
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
    return Material(
      child: Center(
        child: _scaleAnimationButton(),
      ),
    );
  }

  Widget _getRotateButton() {
    return Transform.rotate(
      angle: _angle,
      child: Container(
        color: Colors.blue,
        child: Text(
          "Look at me rotate",
        ),
      ),
    );
  }

  _scaleAnimationButton() {
    return Transform.scale(
      scale: _scale,
      child: ElevatedButton(
        child: Text("Scaled button"),
        onPressed: () {
          if (_controller.status == AnimationStatus.completed) {
            _controller.reverse();
          } else if (_controller.status == AnimationStatus.dismissed) {
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
