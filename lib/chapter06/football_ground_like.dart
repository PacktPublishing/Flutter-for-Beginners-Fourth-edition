import 'package:flutter/material.dart';

class FootballGroundLike extends StatefulWidget {
  const FootballGroundLike({super.key});

  @override
  State<FootballGroundLike> createState() => _FootballGroundLikeState();
}

class _FootballGroundLikeState extends State<FootballGroundLike> {
  int _likeCounter = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _likeCounter++;
        });
      },
      child: Container(
        color: Colors.grey,
        child: Text(
          "Like count: $_likeCounter",
        ),
      ),
    );
  }
}
