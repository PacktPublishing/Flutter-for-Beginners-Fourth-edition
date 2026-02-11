import 'package:flutter/material.dart';

class MoveAnimations extends StatefulWidget {
  const MoveAnimations({super.key});

  @override
  State<MoveAnimations> createState() => _MoveAnimationsState();
}

class _MoveAnimationsState extends State<MoveAnimations> with SingleTickerProviderStateMixin {
  Offset _offset = Offset.zero;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = _createOffsetAnimation();
    _controller.forward();
  }

  AnimationController _createOffsetAnimation() {
    var controller = AnimationController(
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

  @override
  Widget build(BuildContext context) {
    return Center(child: _offsetAnimationButton());
  }

  _offsetAnimationButton() {
    return Transform.translate(
      offset: _offset,
      child: ElevatedButton(
        child: Text("Moved button"),
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
