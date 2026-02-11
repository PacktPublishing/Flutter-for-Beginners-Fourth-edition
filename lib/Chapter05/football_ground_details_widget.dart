import 'package:flutter/material.dart';

class FootballGroundDetailsWidget extends StatelessWidget {
  const FootballGroundDetailsWidget({required this.footballGroundName, super.key});
  final String footballGroundName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(footballGroundName),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/exampleGround.jpg',
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Icon(
              Icons.sports_soccer,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
